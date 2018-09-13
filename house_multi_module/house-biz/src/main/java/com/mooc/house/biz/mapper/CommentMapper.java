package com.mooc.house.biz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mooc.house.common.model.Comment;
import com.mooc.house.common.model.Community;
import com.mooc.house.common.model.House;
import com.mooc.house.common.model.UserMsg;
import com.mooc.house.common.page.PageParams;

@Mapper
public interface CommentMapper {

  List<House> selectHouse(@Param("house") House query, @Param("pageParams")  PageParams pageParams);

  Long selectHouseCount(@Param("house")House query);

  List<Community> selectCommunity(Community community);

  int insertUserMsg(UserMsg userMsg);

  int updateHouse(House house);

  int insert(Comment comment);

  List<Comment> selectComments(@Param("houseId")long houseId, @Param("size")int size);

  List<Comment> selectBlogComments(@Param("blogId")long blogId, @Param("size")int size);
  
}

