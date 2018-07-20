package com.mooc.house.api.config;

import org.springframework.context.annotation.Bean;

import feign.auth.BasicAuthRequestInterceptor;

public class HouseFeignConfig {
  
  @Bean
  public BasicAuthRequestInterceptor basicAuthRequestInterceptor(){
    return new BasicAuthRequestInterceptor("user1", "passwd1");
  }

}
