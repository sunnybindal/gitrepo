/**
 * 
 */
package home.poc.service;

import home.poc.entity.User;

import java.util.List;

/**
 * @author Sunny.Bindal
 *
 */
public interface UserService {

	public List<User> getAll();

	public User saveOrUpdate(User user);

	public User find(Long id);

	public User findBymobile(String mobile);

	public User findByemail(String email);

	public User findByfirstname(String firstname);

	public boolean deleteUser(long parseLong);

}
