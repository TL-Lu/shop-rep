package com.lutenglong.service.imp;

import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.lutenglong.bean.User;
import com.lutenglong.mapper.UserMapper;
import com.lutenglong.service.UserService;

@Service(interfaceClass = UserService.class)
public class UserServiceImp implements UserService {
	@Autowired
	UserMapper userMapper;

	@Override
	public User findUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.findUser(user);
	}
}
