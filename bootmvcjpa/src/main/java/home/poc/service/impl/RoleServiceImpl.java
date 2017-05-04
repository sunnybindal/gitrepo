/**
 * 
 */
package home.poc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import home.poc.entity.Role;
import home.poc.repository.RoleRepository;
import home.poc.service.RoleService;

/**
 * @author Sunny.Bindal
 *
 */
@Service
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public Role find(Long id) {
		return roleRepository.findOne(id);
	}

}
