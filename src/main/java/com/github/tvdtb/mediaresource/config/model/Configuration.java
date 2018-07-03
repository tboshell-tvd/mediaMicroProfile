package com.github.tvdtb.mediaresource.config.model;

public class Configuration {
	SecurityConfig security;
	AlbumConfig album;

	public SecurityConfig getSecurity() {
		return security;
	}

	public void setSecurity(SecurityConfig security) {
		this.security = security;
	}

	public AlbumConfig getAlbum() {
		return album;
	}

	public void setAlbum(AlbumConfig album) {
		this.album = album;
	}

}
