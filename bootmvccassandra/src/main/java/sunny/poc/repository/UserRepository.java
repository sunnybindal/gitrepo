/**
 * 
 */
package sunny.poc.repository;

import org.springframework.data.cassandra.repository.CassandraRepository;

import sunny.poc.entity.User;

/**
 * @author Sunny.Bindal
 *
 */
public interface UserRepository extends CassandraRepository<User> {

}
