package com.github.tvdtb.mediaresource.browser.boundary;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.NotFoundException;

import org.eclipse.microprofile.metrics.annotation.Counted;
import org.eclipse.microprofile.metrics.annotation.Timed;

import com.github.tvdtb.mediaresource.browser.control.AlbumPersistenceControl;
import com.github.tvdtb.mediaresource.browser.control.ImagePersistenceControl;
import com.github.tvdtb.mediaresource.browser.control.ImageProcessingControl;
import com.github.tvdtb.mediaresource.browser.control.ImageProcessingControl.ScalingDTO;
import com.github.tvdtb.mediaresource.browser.control.io.StreamDto;
import com.github.tvdtb.mediaresource.browser.entity.Album;
import com.github.tvdtb.mediaresource.browser.entity.FileItem;
import com.github.tvdtb.mediaresource.browser.entity.Folder;
import com.github.tvdtb.mediaresource.browser.entity.FolderInformation;
import com.github.tvdtb.mediaresource.browser.entity.ImageInformation;
import com.github.tvdtb.mediaresource.browser.entity.PictureFile;

@ApplicationScoped
public class BrowserBoundary {

	@Inject
	ImagePersistenceControl imagePersistence;

	@Inject
	AlbumPersistenceControl albumPersistence;

	@Inject
	ImageProcessingControl imageProcessing;

	@Counted(name = "ReadAlba", description = "count the time reading all the albums takes", reusable = true)
	public List<Album> readAlba() {
		// simple delegation due to multiple implementations
		return albumPersistence.getAlba();
	}

	@Counted(name = "readAlbum", description = "count the times specific albums are called", reusable = true)
	public Album readAlbum(String name) {
		// simple delegation due to multiple implementations
		return albumPersistence.getAlbum(name);
	}

	@Timed(name = "readFolder", description = "Reading the given album's folder info", reusable = true)
	@Counted(name = "readFolderCnt", description = "count the times folder method is called", reusable = true)
	public FolderInformation readFolder(Album album, final String path) {

		FolderInformation result = imagePersistence.readFolderInfo(album, path);

		if (result == null || !result.isCurrent()) {

			List<FileItem> fileItems = imagePersistence.readPath(album, path);
			List<FolderInformation> folders = fileItems.stream()//
					.filter(fi -> fi instanceof Folder)//
					.map(fi -> {
						Folder folder = (Folder) fi;
						FolderInformation folderInfo = new FolderInformation(folder.getName(), folder.getPath());
						return folderInfo;
					})//
					.collect(Collectors.toList());

			List<ImageInformation> images = fileItems.stream().filter(fi -> fi instanceof PictureFile)//
					.map(fi -> {
						PictureFile pf = (PictureFile) fi;

						ImageInformation imageInformation = readImageInformation(album, pf.getPath());
						imageInformation.setName(pf.getName());
						return imageInformation;
					})//
					.collect(Collectors.toList());

			String name = path;
			int idx = name.lastIndexOf("/");
			if (idx >= 0) {
				name = path.substring(idx + 1);
			}

			result = new FolderInformation(name, path);
			result.setFolders(folders);
			result.setImages(images);

			imagePersistence.writeFolderInfo(album, path, result);
		}

		return result;
	}

	public boolean isAbsolute(String path) {
		return path != null && path.startsWith("/");
	}

	@Timed(name = "readImage", description = "Time the reading of a image", reusable = true)
	@Counted(name = "readImageCnt", description = "count the times imagereading method is called", reusable = true)
	public StreamDto readImage(Album album, String path, String imageName//
			, ImageSize desiredSize) throws IOException {

		// try to find the required data in cache
		StreamDto cachedResult = imagePersistence.findCached(album, path, imageName, desiredSize.name());
		if (cachedResult != null) {
			return cachedResult;
		}

		// find resource itself
		StreamDto original = imagePersistence.find(album, path, imageName);
		if (original == null)
			throw new NotFoundException(path + " " + imageName);

		ImageInformation imageInfo = imagePersistence.readImageInfo(album, path, imageName);

		// if found, scale it and save data to cache
		ScalingDTO scaled = imageProcessing.scale(original, imageInfo, desiredSize);
		StreamDto streamResult = scaled.result;
		streamResult.mark();
		try {
			imagePersistence.writeCache(album, path, imageName, desiredSize.name(), streamResult);
		} finally {
			streamResult.reset();
		}

		return streamResult;
	}

	public ImageInformation readImageInformation(Album album, String path) {
		ImageInformation result = imagePersistence.readImageInfo(album, path);
		if (result == null) {
			StreamDto source = imagePersistence.find(album, path);
			result = imageProcessing.readImageInformation(source);
			imagePersistence.writeImageInfo(album, path, result);
		}
		return result;
	}

}
