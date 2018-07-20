package com.mooc.house.comment.controller;

import java.util.List;

import org.apache.commons.lang3.tuple.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mooc.house.comment.common.RestResponse;
import com.mooc.house.comment.model.Blog;
import com.mooc.house.comment.model.BlogQueryReq;
import com.mooc.house.comment.model.ListResponse;
import com.mooc.house.comment.service.BlogService;

@RestController
@RequestMapping("blog")
public class BlogController {
  
  @Autowired
  private BlogService blogService;
  
  @RequestMapping("list")
  public RestResponse<ListResponse<Blog>> list(@RequestBody BlogQueryReq req){
    Pair<List<Blog>,Long> pair = blogService.queryBlog(req.getBlog(),req.getLimit(),req.getOffset());
    return RestResponse.success(ListResponse.build(pair.getKey(), pair.getValue()));
  }
  
  @RequestMapping("one")
  public RestResponse<Blog> one(Integer id){
    Blog blog = blogService.queryOneBlog(id);
    return RestResponse.success(blog);
  }

}