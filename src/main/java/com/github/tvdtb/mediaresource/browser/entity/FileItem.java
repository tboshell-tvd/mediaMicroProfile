package com.github.tvdtb.mediaresource.browser.entity;

import org.eclipse.microprofile.openapi.annotations.media.Schema;

@Schema(name = "FileItem", description = "Base class for a file")
public abstract class FileItem {
	private String type;
	private String name;
	private String path;

	public FileItem(String type) {
		this.type = type;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
