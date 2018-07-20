package com.mooc.house.api.service;

import java.util.List;

import org.apache.commons.lang3.tuple.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.house.api.common.PageData;
import com.mooc.house.api.common.PageParams;
import com.mooc.house.api.dao.CommentDao;
import com.mooc.house.api.model.Blog;
import com.mooc.house.api.model.Comment;
import com.mooc.house.api.model.CommentReq;
import com.mooc.house.api.model.House;

@Service
public class CommentService {
  
  @Autowired
  private CommentDao commentDao;

  public void addHouseComment(Long houseId, String content, Long userId) {
     CommentReq commentReq = new CommentReq();
     commentReq.setHouseId(houseId);
     commentReq.setContent(content);
     commentReq.setUserId(userId);
     commentReq.setType(1);
     commentDao.addComment(commentReq);
  }

  public void addBlogComment(Integer blogId, String content, Long userId) {
    CommentReq commentReq = new CommentReq();
    commentReq.setBlogId(blogId);
    commentReq.setContent(content);
    commentReq.setUserId(userId);
    commentReq.setType(2);
    commentDao.addComment(commentReq);
  }

 

  
  public List<Comment> getHouseComments(long id) {
    CommentReq commentReq = new CommentReq();
    commentReq.setHouseId(id);
    commentReq.setType(1);
    commentReq.setSize(8);
    return commentDao.listComment(commentReq);
  }

  public List<Comment> getBlogComments(int id) {
    CommentReq commentReq = new CommentReq();
    commentReq.setBlogId(id);
    commentReq.setType(2);
    commentReq.setSize(8);
    return commentDao.listComment(commentReq);
  }
  
  
  public Blog queryOneBlog(int id){
    return commentDao.getBlog(id);
  }
  

  public PageData<Blog> queryBlogs(Blog query, PageParams build) {
    Pair<List<Blog>, Long> pair = commentDao.getBlogs(query,build.getLimit(),build.getOffset());
    return PageData.buildPage(pair.getKey(), pair.getValue(), build.getPageSize(), build.getPageNum());
  }
  
  
  
  
  
  

}
