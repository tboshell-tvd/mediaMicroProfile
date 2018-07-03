package com.github.tvdtb.mediaresource.browser.control.impl;

import java.util.List;
import java.util.stream.Collectors;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import org.slf4j.Logger;

import com.github.tvdtb.mediaresource.browser.control.AlbumPersistenceControl;
import com.github.tvdtb.mediaresource.browser.entity.Album;
import com.github.tvdtb.mediaresource.config.control.ConfigControl;

/**
 * Simple Implementation based on config JSON
 *
 */

@RequestScoped
public class AlbumPersistenceControlConfigImpl implements AlbumPersistenceControl {

	@Inject
	Logger logger;

	@Inject
	ConfigControl config;

	public List<Album> getAlba() {
		return config.getConfig().getAlbum().getAlba().stream()//
				.collect(Collectors.toList());
	}

	@Override
	public Album getAlbum(String name) {
		return config.getConfig().getAlbum().getAlba().stream()//
				.filter(a -> name.equals(a.getName()))//
				.findFirst().orElse(null);
	}

}
