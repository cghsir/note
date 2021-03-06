package com.cghsir.dao;

import java.util.List;

import com.cghsir.model.User;

public interface UserDao {
	
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> selectByUser(User user);
}