package home.poc.repository;

import home.poc.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @author Sunny.Bindal
 *
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	User findByMobile(String mobile);

	User findByEmail(String email);

	User findByFirstname(String firstname);

	@Modifying
	@Query("update User u set u.isdeleted=true where u.id=:id")
	void deleteUser(@Param("id") long id);

}