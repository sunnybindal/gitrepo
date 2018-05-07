package com.sunny.service;

import com.sunny.entity.User;
import com.sunny.exception.DBExeption;

public interface UserService {

	public User getUserById(Long id) throws DBExeption;
	
}
