package com.mooc.house.api.inteceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConf extends WebMvcConfigurerAdapter {

  @Autowired
  private AuthInterceptor authInterceptor;
  
  @Autowired
  private AuthActionInterceptor authActionInterceptor;
  
  @Override
  public void addInterceptors(InterceptorRegistry registry) {
    registry.addInterceptor(authInterceptor).excludePathPatterns("/static").addPathPatterns("/**");
    registry
        .addInterceptor(authActionInterceptor)
         .addPathPatterns("/house/toAdd")
        .addPathPatterns("/accounts/profile").addPathPatterns("/accounts/profileSubmit")
        .addPathPatterns("/house/bookmarked").addPathPatterns("/house/del")
        .addPathPatterns("/house/ownlist").addPathPatterns("/house/add")
        .addPathPatterns("/house/toAdd").addPathPatterns("/agency/agentMsg")
        .addPathPatterns("/comment/leaveComment").addPathPatterns("/comment/leaveBlogComment");
    
    super.addInterceptors(registry);
  }
  
  @Override
  public void addCorsMappings(CorsRegistry registry) {
    registry.addMapping("/**")//拦截所有的url
        .allowedOrigins("*")// 放行哪些原始域，比如"http://domain1.com,https://domain2.com"
        .allowCredentials(true)// 是否发送Cookie信息
        .allowedMethods("GET", "POST", "PUT", "DELETE") // 放行哪些原始域(请求方式)
        .allowedHeaders("*");// 放行哪些原始域(头部信息)
    super.addCorsMappings(registry);
  }
  

}
