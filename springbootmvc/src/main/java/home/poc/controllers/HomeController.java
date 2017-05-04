package home.poc.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value={"welome","/"})
	public String welcome(HttpServletRequest request,HttpServletResponse response,Model model) {
		model.addAttribute("name", "sunny");
		return "welcome";
	}

}
