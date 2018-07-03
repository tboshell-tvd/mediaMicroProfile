package com.github.tvdtb.mediaresource.config.model;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import org.eclipse.microprofile.config.inject.ConfigProperty;

import com.github.tvdtb.mediaresource.browser.entity.Album;

@ApplicationScoped
public class AlbumConfig {

	@Inject
	@ConfigProperty(name = "album.dirFilter") // TODO: the property name
	String dirFilter;

	String cacheDirPattern;
	List<Album> alba;

	public String getDirFilter() {
		return dirFilter;
	}

	public void setDirFilter(String dirFilter) {
		this.dirFilter = dirFilter;
	}

	public String getCacheDirPattern() {
		return cacheDirPattern;
	}

	public void setCacheDirPattern(String cacheDirPattern) {
		this.cacheDirPattern = cacheDirPattern;
	}

	public List<Album> getAlba() {
		return alba;
	}

	public void setAlba(List<Album> alba) {
		this.alba = alba;
	}
}
