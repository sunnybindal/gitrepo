/**
 * 
 */
package home.poc.repository;

import home.poc.entity.Role;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Sunny.Bindal
 *
 */
@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
