package com.github.tvdtb.mediaresource.browser.entity;

import java.util.List;

import org.eclipse.microprofile.openapi.annotations.media.Schema;

@Schema(name = "Alba", description = "The root directory representation")
public class Alba {
	String defaultAlbumName;
	List<Album> alba;

	public String getDefaultAlbumName() {
		return defaultAlbumName;
	}

	public void setDefaultAlbumName(String defaultAlbumName) {
		this.defaultAlbumName = defaultAlbumName;
	}

	public List<Album> getAlba() {
		return alba;
	}

	public void setAlba(List<Album> alba) {
		this.alba = alba;
	}

}
