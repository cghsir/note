package com.cghsir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cghsir.dao.UserDao;
import com.cghsir.model.User;
import com.cghsir.service.UserServiceI;
@Service
public class UserServiceImpl implements UserServiceI {

	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> selectByUser(User user) {
		return userDao.selectByUser(user);
	}

	@Override
	public void insertSelective(User record) {
		userDao.insertSelective(record);
	}


}
