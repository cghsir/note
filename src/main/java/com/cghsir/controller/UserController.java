package com.cghsir.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping("/login")
	public String index(){
		return "login";
	}
	
	@RequestMapping("/doLogin")
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password){
		Subject subject = SecurityUtils.getSubject();
		//将用户名密码转换成token
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		// remeberme
		token.setRememberMe(true);
		try {
			subject.login(token);
		}
		//所有认证异常的父类
		catch (AuthenticationException e) {
			System.out.println("登录失败：  " + e.getMessage());
			return "login";
		}
		return "index";
	}
}
