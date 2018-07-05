package com.github.tvdtb.mediaresource;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition;
import org.eclipse.microprofile.openapi.annotations.info.Info;

import com.github.tvdtb.mediaresource.auth.UserResource;
import com.github.tvdtb.mediaresource.browser.BrowserResource;
import com.github.tvdtb.mediaresource.browser.control.MediaTypeControl;
import com.github.tvdtb.mediaresource.config.control.ConfigControl;
import com.github.tvdtb.mediaresource.config.model.AlbumConfig;
import com.github.tvdtb.mediaresource.streams.StreamResource;

/**
 * 
 * http://localhost:8080/api/ http://localhost:8080/swagger/index.html
 * http://localhost:8080/ui/index.html
 * 
 * @author brt, bth
 *
 */
@OpenAPIDefinition(info = @Info(title = "mediaAppProfile", description = "A simple demonstration of implementing brt's spring services as microprofile elements", version = "0.1"))
@ApplicationPath("/media/api")
public class MediaResource extends Application {
	public static boolean isHealthy;

	public MediaResource() {
		isHealthy = true;
	}

	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> resources = new HashSet<>();
		resources.add(AlbumConfig.class);
		resources.add(StreamResource.class);
		resources.add(BrowserResource.class);
		resources.add(UserResource.class);
		resources.add(MediaTypeControl.class);
		resources.add(ConfigControl.class);
		return resources;
	}

	public static RuntimeException handleException(Exception e) {
		if (e instanceof RuntimeException)
			throw (RuntimeException) e;
		else
			throw new RuntimeException(e);
	}

}
