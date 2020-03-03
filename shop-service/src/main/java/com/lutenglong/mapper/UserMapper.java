package com.lutenglong.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.lutenglong.bean.User;

public interface UserMapper {

	@Select("SELECT * FROM hg_user where username=#{user.userName} and password=#{user.password}")
	User findUser(@Param("user")User user);

}
