package com.mooc.house.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mooc.house.common.model.User;

@Mapper
public interface UserMapper {

	public List<User>  selectUsers();
	
}
