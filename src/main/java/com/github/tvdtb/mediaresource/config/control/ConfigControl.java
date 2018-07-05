package com.github.tvdtb.mediaresource.config.control;

import java.io.File;

import javax.annotation.PostConstruct;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import org.apache.commons.imaging.util.IoUtils;
import org.eclipse.microprofile.config.inject.ConfigProperty;

import com.alibaba.fastjson.JSON;
import com.github.tvdtb.mediaresource.config.model.Configuration;

@ApplicationScoped
public class ConfigControl {

	@Inject
	@ConfigProperty(name = "application.config")
	String config;

	@Inject
	@ConfigProperty(name = "user.home")
	String userHome;

	private Configuration configuration;

	public Configuration getConfig() {
		return configuration;
	}

	@PostConstruct
	public void readConfig() {

		if (config == null || userHome == null) {
			throw new IllegalArgumentException("Not loading properly, missing properties");
		}
		String json = config;
		if (config.startsWith("file:")) {
			json = readFile(config.replace("${user.home}", userHome).substring(5));
		}

		configuration = JSON.parseObject(json, Configuration.class);
	}

	private String readFile(String fileName) {
		try {
			File f = new File(fileName);
			byte[] jsonData = IoUtils.getFileBytes(f);
			String json = new String(jsonData, "UTF-8");
			return json;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public void setConfig(String config) {
		this.config = config;
	}

}
