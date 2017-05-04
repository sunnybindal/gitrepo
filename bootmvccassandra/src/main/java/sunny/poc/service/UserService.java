package sunny.poc.service;

import sunny.poc.entity.User;

public interface UserService {

	User getBySession(String name);

	User getByRepository(String name);

	void saveUser();

	String createBySessionCql();

	void saveUserUsingRespository();

}
