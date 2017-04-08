package com.cghsir.service;

import java.util.List;

import com.cghsir.model.User;

/**
 * @author cghsir
 * @date 2017年4月9日 01:28:23
 * @description userservice
 */
public interface UserServiceI {
	
	public List<User> selectByUser(User user);
	
}
