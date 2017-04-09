package com.cghsir.service;

import java.util.List;

import com.cghsir.model.User;

/**
 * @author cghsir
 * @date 2017年4月9日 01:28:23
 * @description userservice
 */
public interface UserServiceI {
	
	/**
	 * 根据一个对象查询一个列表
	 * @param user
	 * @return
	 */
	public List<User> selectByUser(User user);

	/**
	 * 新增一条记录
	 * @param dbUser
	 */
	public void insertSelective(User record);
	
}
