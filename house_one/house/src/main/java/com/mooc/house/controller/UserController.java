package com.mooc.house.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mooc.house.common.model.User;
import com.mooc.house.service.UserService;

@RestController
public class UserController {

  @Autowired
  private UserService userService;
  
  @RequestMapping("user")
  public List<User> getUsers(){
    return userService.getUsers();
  }
  

}
