package sunny.poc.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.cassandraunit.shaded.org.codehaus.jackson.JsonGenerationException;
import org.cassandraunit.shaded.org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sunny.poc.entity.User;
import sunny.poc.service.UserService;

@RestController
@RequestMapping("users")
public class UserController {

	@Autowired
	private UserService userservice;

	@RequestMapping("create")
	public String create(HttpServletRequest request) {

		String result = userservice.createBySessionCql();
		return result;
	}

	@RequestMapping("get/{name}")
	public User read(HttpServletRequest request, @PathVariable String name,
			ModelMap model) throws JsonGenerationException,
			JsonMappingException, IOException {
		//User user = userservice.getBySession(name);
		User user = userservice.getByRepository(name);
		return user;
	}

	@RequestMapping("save")
	public User save(HttpServletRequest request) {

		userservice.saveUserUsingRespository();
		return null;
	}
}
