/**
 * 
 */
package com.github.tvdtb.mediaresource;

import javax.enterprise.context.ApplicationScoped;

import org.eclipse.microprofile.health.Health;
import org.eclipse.microprofile.health.HealthCheckResponse;
import org.eclipse.microprofile.health.HealthCheckResponseBuilder;

/**
 * @author bth
 *
 */
@ApplicationScoped
@Health
public class HealthCheck implements org.eclipse.microprofile.health.HealthCheck {

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.eclipse.microprofile.health.HealthCheck#call()
	 */
	@Override
	public HealthCheckResponse call() {
		HealthCheckResponseBuilder alive = HealthCheckResponse.named("alive");
		// Other info
		if (MediaResource.isHealthy) {
			alive.up();
		} else {
			alive.down();
		}
		alive.withData("health", "checker");
		return alive.build();
	}

}
