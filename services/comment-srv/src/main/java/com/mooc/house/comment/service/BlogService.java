package com.mooc.house.comment.service;

import java.util.List;

import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.mooc.house.comment.mapper.BlogMapper;
import com.mooc.house.comment.model.Blog;
import com.mooc.house.comment.model.LimitOffset;

@Service
public class BlogService {
  
  @Autowired
  private BlogMapper blogMapper;


  private void populate(List<Blog> blogs) {
    if (!blogs.isEmpty()) {
      blogs.stream().forEach(item -> {
        String stripped =  Jsoup.parse(item.getContent()).text();
        item.setDigest(stripped.substring(0, Math.min(stripped.length(),40)));
        String tags = item.getTags();
        item.getTagList().addAll(Lists.newArrayList(Splitter.on(",").split(tags)));
      });
    }
  }


  /**
   * 查询博客列表
   * 数据填空处理
   * @param blog
   * @param limit
   * @param offset
   * @return
   */
  public Pair<List<Blog>, Long> queryBlog(Blog blog, Integer limit, Integer offset) {
    List<Blog> blogs = blogMapper.selectBlog(blog, LimitOffset.build(limit, offset));
    populate(blogs);
    Long count =  blogMapper.selectBlogCount(blog);
    return ImmutablePair.of(blogs, count);
  }


  public Blog queryOneBlog(Integer id) {
    Blog query = new Blog();
    query.setId(id);
    List<Blog> blogs = blogMapper.selectBlog(query, LimitOffset.build(1, 0));
    if (!blogs.isEmpty()) {
       return blogs.get(0);
    }
    return null;
  }

//  

  

}
