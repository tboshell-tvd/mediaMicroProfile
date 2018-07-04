package com.github.tvdtb.mediaresource.browser.entity;

import org.eclipse.microprofile.openapi.annotations.media.Schema;

@Schema(name = "MediaFile", description = "base class for media files")
public class MediaFile extends FileItem {

	long size;

	public MediaFile() {
		super("file");
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}
}
