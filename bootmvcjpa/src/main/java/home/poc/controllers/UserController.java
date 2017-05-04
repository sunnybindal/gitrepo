/**
 * 
 */
package home.poc.controllers;

import home.poc.entity.User;
import home.poc.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Sunny.Bindal
 *
 */
@Controller
@RequestMapping(value={"/users","/"})
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping
	public String getAllUsers(ModelMap modelMap) {
		modelMap.addAttribute("users", userService.getAll());
		return "users/userslist";
	}
	
	@RequestMapping("/id")
	public String getsingleuser(ModelMap modelMap, HttpServletRequest request) {
		String userid = request.getParameter("userid");
		if (!StringUtils.isEmpty(userid)) {
			User user = userService.find(Long.parseLong(userid));
			if (user!=null) {
				modelMap.addAttribute("user", user);
				modelMap.addAttribute("message", "User Found.");
			}else {
				modelMap.addAttribute("message", "No User Found.");
			}
			
		}
		return "users/user";
	}
	
	@RequestMapping("/mobile")
	public String userexistsbymobbile(ModelMap modelMap, HttpServletRequest request) {
		String mobile = request.getParameter("mobile");
		if (!StringUtils.isEmpty(mobile)) {
			User user = userService.findBymobile(mobile);
			if (user!=null) {
				modelMap.addAttribute("user", user);
				modelMap.addAttribute("message", "User Found.");
			}else {
				modelMap.addAttribute("message", "No User Found.");
			}
		}
		return "users/user";
	}
	
	@RequestMapping("/email")
	public String userexistsbyemail(ModelMap modelMap, HttpServletRequest request) {
		String email = request.getParameter("email");
		if (!StringUtils.isEmpty(email)) {
			User user = userService.findByemail(email);
			if (user!=null) {
				modelMap.addAttribute("user", user);
				modelMap.addAttribute("message", "User Found.");
			}else {
				modelMap.addAttribute("message", "No User Found.");
			}
		}
		return "users/user";
	}
	
	@RequestMapping("/firstname")
	public String userexistsbyfirstname(ModelMap modelMap, HttpServletRequest request) {
		String firstname = request.getParameter("firstname");
		if (!StringUtils.isEmpty(firstname)) {
			User user = userService.findByfirstname(firstname);
			if (user!=null) {
				modelMap.addAttribute("user", user);
				modelMap.addAttribute("message", "User Found.");
			}else {
				modelMap.addAttribute("message", "No User Found.");
			}
		}
		return "users/user";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String adduser(ModelMap modelMap, HttpServletRequest request) {
		modelMap.addAttribute("user", new User());
		return "users/register";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String saveuser(@Valid User user,BindingResult bindingResult, HttpServletRequest request,ModelMap modelMap) {
		if (bindingResult.hasErrors()) {
			modelMap.addAttribute("user", user);
			return "users/register";
		} else {
			user = userService.saveOrUpdate(user);
			modelMap.addAttribute("user", user);
			modelMap.addAttribute("message", "New User added successfully.");
			return "users/user";
		}
	}
	
	@RequestMapping(value="/delete")
	public String deleteuser(HttpServletRequest request,ModelMap modelMap) {
		String id = request.getParameter("userid");
		if (!StringUtils.isEmpty(id)) {
			if (userService.deleteUser(Long.parseLong(id))) {
				modelMap.addAttribute("message", "User deleted successfully.");
			}else {
				modelMap.addAttribute("message", "User not deleted. Please try again successfully.");
			}
		}
		return "redirect:/users";
	}
	
	@RequestMapping("/update")
	public String updateUser(ModelMap modelMap, HttpServletRequest request) {
		String userid = request.getParameter("userid");
		if (!StringUtils.isEmpty(userid)) {
			User user = userService.find(Long.parseLong(userid));
			if (user!=null) {
				modelMap.addAttribute("user", user);
				return "users/register";
			}
		}
		modelMap.addAttribute("message", "No User Found.");
		return "users/register";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateuser(@Valid User user,BindingResult bindingResult, HttpServletRequest request,ModelMap modelMap) {
		if (bindingResult.hasErrors()) {
			modelMap.addAttribute("user", user);
			return "users/register";
		} else {
			user = userService.saveOrUpdate(user);
			modelMap.addAttribute("user", user);
			modelMap.addAttribute("message", "User updated successfully.");
			return "users/user";
		}
	}

}
