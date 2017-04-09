package com.cghsir.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cghsir.common.Constants;
import com.cghsir.common.UtilProcess;
import com.cghsir.model.User;
import com.cghsir.model.pageModel.UserPage;
import com.cghsir.service.UserServiceI;

@Controller
@RequestMapping("/user")
public class UserController {
	
	//bootstrap jsp目录根路径
	private static String BOOTSTRAP_BASE_DIR = Constants.BaseDir.BOOTSTRAP_BASE_DIR.toString();
	
	@Autowired
	private UserServiceI userService;
	
	@RequestMapping("/login")
	public String index(){
		return BOOTSTRAP_BASE_DIR + "login";
	}
	
	/**
	 * @param user
	 * @return
	 * @date 2017年4月9日 13:09:20
	 * @description 用户认真
	 */
	@RequestMapping("/doLogin")
	public String login(UserPage user,HttpServletRequest request){
		Subject subject = SecurityUtils.getSubject();
		//将用户名密码转换成token
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),user.getPassword());
		// remeberme
		if(user.getRemember()){
			//TODO rember me 未生效
			token.setRememberMe(true);
		}
		try {
			subject.login(token);
		}
		//所有认证异常的父类
		catch (AuthenticationException e) {
			Exception ex = new Exception("登录失败!");
			request.setAttribute("ex", ex);
			request.setAttribute("exmore", e);
			System.out.println("登录失败：  " + e.getMessage());
			throw e;
		}
		return BOOTSTRAP_BASE_DIR + "index";
	}
	
	/**
	 * @param user
	 * @return
	 * @throws Exception 
	 * @date 2017年4月9日 13:10:55
	 * @description 用户注册
	 */
	@RequestMapping("/register")
	public String register(UserPage user,HttpSession session,HttpServletRequest request) throws Exception{
		User dbUser = new User();
		//copy属性
		PropertyUtils.copyProperties(dbUser, user);
		//设置主键
		dbUser.setId(UtilProcess.getPrimaryKey());
		//设置注册时间
		dbUser.setCreateDate(new Date());
		//设置用户盐值
		dbUser.setSalt(UUID.randomUUID().toString().substring(0, 9));
		//设置加密方式
		String hashAlgorithmName = "MD5";
		//获取密码
		Object credentials = user.getPassword();
		//盐值转换
		Object salt = ByteSource.Util.bytes(dbUser.getSalt());
		int hashIterations = 1024;
		//加盐后的密码
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		//保存加密后的盐值
		dbUser.setPassword(result.toString());
		try {
			userService.insertSelective(dbUser);
		} catch (Exception e) {
			Exception ex = new Exception("注册失败!");
			session.setAttribute("ex", ex);
			request.setAttribute("ex", ex);
			request.setAttribute("exmore", e);
			throw ex;
//			System.out.println("注册失败!");
//			return "login";
		}
		String rtn = this.login(user, request);
		return rtn;
	}
}
