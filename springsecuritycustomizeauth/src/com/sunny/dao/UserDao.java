package com.sunny.dao;

import org.springframework.data.repository.CrudRepository;

import com.sunny.entity.User;

public interface UserDao extends CrudRepository<User, Long>{

}
