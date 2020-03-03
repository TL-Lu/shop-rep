package com.lutenglong.controller;

import org.apache.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lutenglong.bean.User;
import com.lutenglong.service.UserService;

@Controller
public class UserController {
	@Reference(url = "dubbo://127.0.0.1:20881",timeout = 30000)
	UserService userService;
	
	/**
	 * 跳转页面
	 * @param m
	 * @return
	 */
	@RequestMapping("index.do")					
	public String toLogin(Model m) {
		m.addAttribute("user", new User());
		return "login";
	}
	
	/**
	 * 登录
	 * @param m
	 * @param user
	 * @return
	 */
	@RequestMapping("login.do")
	public String login (Model m,User user) {
		User loginUser = userService.findUser(user);
		System.err.println(loginUser);
		if(loginUser!=null) {
			return null;
		}
		m.addAttribute("err", "账号或密码错误");
		return  "login";
	}
	
}
