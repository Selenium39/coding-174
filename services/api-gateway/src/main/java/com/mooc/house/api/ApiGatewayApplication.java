package com.mooc.house.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mooc.house.api.config.NewRuleConfig;




@SpringBootApplication
@EnableDiscoveryClient
@EnableCircuitBreaker
@Controller
@EnableZuulProxy
@EnableFeignClients
//@RibbonClient(name="user",configuration=NewRuleConfig.class)
public class ApiGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApiGatewayApplication.class, args);
	}
	
	@Autowired
	private DiscoveryClient discoveryClient;
	
	@RequestMapping("index1")
	@ResponseBody
	public List<ServiceInstance> getReister(){
	  return discoveryClient.getInstances("user");
	}
	
}	
	
	
