package com.sunny.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sunny.entity.User;

@Controller
@RequestMapping("/")
public class HomeController {

	/*@Autowired
	private UserService userService;*/

	@RequestMapping(method = RequestMethod.GET)
	public String showForm(ModelMap model,HttpServletRequest request,HttpServletResponse response) {

		User user =new User();
		System.out.println(user);
		model.addAttribute("greeting","Hello World from Spring 4 MVC and security");
		user.setPhone("9999637292");
		model.addAttribute("usera",user);
		return "welcome";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView saveForm(HttpServletRequest request,HttpServletResponse response,@Valid User user,BindingResult bindingResult,@Param(value="usera") User usera) {
		ModelAndView modelAndView = new ModelAndView("welcome");
		modelAndView.addObject("usera", user);
		if (bindingResult.hasErrors()) {
			return modelAndView;
		}
		//User user = userService.getUserById(1L);
		//System.out.println(user);
		//model.addAttribute("greeting","Hello World from Spring 4 MVC and security");
		return modelAndView;
	}

	@RequestMapping(value = "admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is protected page - Admin Page!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "dba**", method = RequestMethod.GET)
	public ModelAndView dbaPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello World");
		model.addObject("message", "This is protected page - Database Page!");
		model.setViewName("admin");

		return model;

	}

}
