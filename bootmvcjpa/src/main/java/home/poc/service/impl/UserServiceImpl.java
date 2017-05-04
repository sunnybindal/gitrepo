package home.poc.service.impl;

import home.poc.entity.User;
import home.poc.repository.UserRepository;
import home.poc.service.UserService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Sunny.Bindal
 *
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public List<User> getAll() {
		return userRepository.findAll();
	}

	@Override
	public User saveOrUpdate(User user) {
		// TODO Auto-generated method stub
		return userRepository.save(user);
	}

	@Override
	public User find(Long id) {
		// TODO Auto-generated method stub
		return userRepository.findOne(id);
	}

	@Override
	public User findBymobile(String mobile) {
		return userRepository.findByMobile(mobile);
	}

	@Override
	public User findByemail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public User findByfirstname(String firstname) {
		return userRepository.findByFirstname(firstname);
	}

	@Override
	public boolean deleteUser(long id) {
		try {
			userRepository.deleteUser(id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}