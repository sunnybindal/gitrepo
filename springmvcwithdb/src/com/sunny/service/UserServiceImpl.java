package com.sunny.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunny.constants.Constant;
import com.sunny.dao.UserDao;
import com.sunny.entity.User;
import com.sunny.exception.DBExeption;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User getUserById(Long id) {
		User user = null;
		try {
			user = userDao.findOne(id);
		} catch (Exception e) {
			throw (new DBExeption(Constant.ERROR_DB_DATA_ACCESS));
		}
		return user;
	}

}
