package com.mooc.house.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mooc.house.common.model.User;
import com.mooc.house.service.UserService;

@Controller
public class HelloController {
  

  @Autowired
  private UserService userService;
  
  @RequestMapping("hello")
  public String  hello(ModelMap modelMap){
    List<User> users = userService.getUsers();
    User one = users.get(0);
    modelMap.put("user", one);
    return "hello";
  }
  
  @RequestMapping("index")
  public String index(){
     return "homepage/index";
  }

}
