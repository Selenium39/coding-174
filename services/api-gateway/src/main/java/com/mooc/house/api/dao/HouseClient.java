package com.mooc.house.api.dao;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mooc.house.api.common.RestResponse;
import com.mooc.house.api.config.HouseFeignConfig;
import com.mooc.house.api.model.House;
import com.mooc.house.api.model.UserMsg;

@FeignClient(name="house",configuration=HouseFeignConfig.class)
public interface HouseClient {
  
  @RequestMapping(value="house/detail",method=RequestMethod.GET)
  public RestResponse<House> houseDetail(@RequestParam("id") Long id);
  
  @RequestMapping(value="house/addUserMsg",method=RequestMethod.POST)
  public RestResponse<Object> houseMsg(@RequestBody UserMsg userMsg);
  

}
