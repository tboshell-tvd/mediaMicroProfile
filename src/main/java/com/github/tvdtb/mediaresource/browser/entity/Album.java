package com.github.tvdtb.mediaresource.browser.entity;

import java.util.List;
import java.util.Map;

import org.eclipse.microprofile.openapi.annotations.media.Schema;

@Schema(name = "Album", description = "Represents a directory, here termed Album")
public class Album {

	private String name;
	private String path;
	private Map<String, List<String>> permissions;

	public Album() {
		super();
	}

	public Album(String name, String path) {
		super();
		this.name = name;
		this.path = path;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Map<String, List<String>> getPermissions() {
		return permissions;
	}

	public void setPermissions(Map<String, List<String>> permissions) {
		this.permissions = permissions;
	}

}
