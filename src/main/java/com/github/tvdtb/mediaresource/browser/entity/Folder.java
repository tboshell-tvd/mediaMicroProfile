package com.github.tvdtb.mediaresource.browser.entity;

import org.eclipse.microprofile.openapi.annotations.media.Schema;

@Schema(name = "Folder", description = "Media representation of a folder(directory), implements FileItem")
public class Folder extends FileItem {
	public Folder() {
		super("folder");
	}

}
