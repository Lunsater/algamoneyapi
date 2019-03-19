package com.example.algamoney.api.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.algamoney.api.config.property.AlgamoneyApiProperty;

@Profile("basic-security")
@Configuration
public class CorsConfig {
	
	@Autowired
	private AlgamoneyApiProperty algamoneyApiProperty;

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
	                .allowedOrigins(algamoneyApiProperty.getOriginPermitida())
	        		.allowedMethods("POST", "GET", "DELETE", "PUT", "OPTIONS")
	        		.allowedHeaders("Authorization", "Content-type", "Accept")
	        		.allowCredentials(true)
	        		.maxAge(3600);
            }
        };
    }
}