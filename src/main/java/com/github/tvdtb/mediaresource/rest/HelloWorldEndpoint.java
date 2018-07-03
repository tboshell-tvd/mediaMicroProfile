package com.github.tvdtb.mediaresource.rest;

import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import org.eclipse.microprofile.metrics.annotation.Counted;
import org.eclipse.microprofile.metrics.annotation.Timed;

@RequestScoped
@Path("/hello")
public class HelloWorldEndpoint {

	@PostConstruct
	public void startup() {
	}

	@GET
	@Produces("text/plain")
	@Counted(description = "Counting of the Hello call", absolute = true, tags = { "app=shop",
			"type=counter" }, monotonic = true)
	@Timed(name = "helloTime", description = "Timing of the Hello call", absolute = true, tags = { "app=shop",
			"type=timer" })
	public Response doGet() {
		return Response.ok(" Well, hello there. ").build();
	}

}
