package com.sunny.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunny.dao.UserDao;
import com.sunny.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User getUserById(Long id) {
		User user = userDao.findOne(id);
		return user;
	}

}
