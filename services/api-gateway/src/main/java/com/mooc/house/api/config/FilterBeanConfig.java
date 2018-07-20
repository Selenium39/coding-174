package com.mooc.house.api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class FilterBeanConfig {
  
  @Bean
  public CorsFilter corsFilter() {
      final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
      final CorsConfiguration config = new CorsConfiguration();
      config.setAllowCredentials(true);
      config.addAllowedOrigin("*");//放行哪些原始域，比如"http://domain1.com,https://domain2.com"
      config.addAllowedHeader("*");// 放行哪些原始域(头部信息)
      config.addAllowedMethod("GET");
      config.addAllowedMethod("PUT");
      config.addAllowedMethod("POST");
      config.addAllowedMethod("DELETE");
      source.registerCorsConfiguration("/**", config);////拦截所有的url
      return new CorsFilter(source);
  }
  
 
 

}
