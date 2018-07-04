package com.github.tvdtb.mediaresource.auth;

import java.util.Base64;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.PostConstruct;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;

import org.eclipse.microprofile.openapi.annotations.Operation;
import org.eclipse.microprofile.openapi.annotations.media.Content;
import org.eclipse.microprofile.openapi.annotations.responses.APIResponse;
import org.eclipse.microprofile.openapi.annotations.responses.APIResponses;

import com.github.tvdtb.mediaresource.auth.model.LoginDto;
import com.github.tvdtb.mediaresource.config.control.ConfigControl;
import com.github.tvdtb.mediaresource.config.model.SecurityConfig;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwt;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.impl.crypto.MacProvider;

@RequestScoped
@Path("user")
@Produces(MediaType.APPLICATION_JSON)
public class UserResource {

	// TODO: not designed or something to utilize the microprofile jwt...I do not
	// know enought at this time.
	// the MP way requireds that the public key already be shared, and the server
	// configuration differs for each one.
	// I will use the existing, non-migrated code.
	// The eclipse microprofile jwt allows for server configured jwt signed passkey
	// being passed-into headers, then can user the @RolesAllowed and @LoginConfig
	// annotations
	// where appropriate to protect services
	private SecretKey key;

	@Inject
	ConfigControl config;

	@Context
	UriInfo uriInfo;

	@PostConstruct
	public void init() {

		SecurityConfig security = config.getConfig().getSecurity();
		if (security != null) {
			String jwtKey = security.getJwtKey();
			System.out.println("KEY=" + jwtKey);
			byte[] keyBytes = Base64.getDecoder().decode(jwtKey);
			key = new SecretKeySpec(keyBytes, SignatureAlgorithm.HS512.getJcaName());
		} else {
			key = MacProvider.generateKey();
		}
	}

	@APIResponses(value = {
			@APIResponse(responseCode = "200", description = "User found", content = @Content(mediaType = MediaType.TEXT_PLAIN)),
			@APIResponse(responseCode = "400", description = "User NOT found", content = @Content(mediaType = MediaType.TEXT_PLAIN)) })
	@Operation(summary = "Gets the username from the webtoken", description = "Gets the username from the webtoken")
	@GET
	public Response getUser(@Context HttpHeaders headers) {
		String authentication = headers.getHeaderString("Authentication");
		Matcher matcher = Pattern.compile("Bearer (.*)").matcher(authentication);
		if (matcher.matches()) {
			String jwtString = matcher.group(1);

			Jwt jwt = Jwts.parser().setSigningKey(key).parse(jwtString);
			Claims body = (Claims) jwt.getBody();

			String username = body.getSubject();

			return Response.ok(username, MediaType.TEXT_PLAIN).build();
		} else {
			return Response.status(Response.Status.BAD_REQUEST).build();
		}

	}

	@APIResponse(responseCode = "200", description = "a mocked login", content = @Content(mediaType = MediaType.TEXT_HTML))
	@PUT
	@Path("/login")
	public Response login(LoginDto json) {
		System.out.println("JSON=" + json);

		if (json.getUsername() == null || json.getUsername().trim().length() < 3
				|| !checkPassword(json.getUsername(), json.getPassword()))
			return Response.status(Response.Status.FORBIDDEN).build();

		String jwtString = Jwts.builder()//
				.setSubject(json.getUsername())//
				.setIssuedAt(new Date())//
				.signWith(SignatureAlgorithm.HS512, key).compact();

		return Response.ok(jwtString, MediaType.TEXT_PLAIN).build();
	}

	private boolean checkPassword(String username, String password) {
		// TODO implement me
		return password != null && password.equals(username.toLowerCase());
	}

}
