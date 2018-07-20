package com.mooc.house.comment.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mooc.house.comment.model.Comment;

@Mapper
public interface CommentMapper {

  int insert(Comment comment);
  
  List<Comment> selectComments(@Param("houseId") long houseId, @Param("size") int size);
  
  List<Comment> selectBlogComments(@Param("blogId") long blogId,@Param("size") int size);
  
}

