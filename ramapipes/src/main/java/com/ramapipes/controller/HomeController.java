package com.ramapipes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@RequestMapping
	public String index() {
		return "index";
	}

	@RequestMapping("product")
	public String product() {
		return "product";
	}
	
	@RequestMapping("about")
	public String aboutus() {
		return "aboutus";
	}
	
	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("environment")
	public String environment() {
		return "environment";
	}
	@RequestMapping("client")
	public String client() {
		return "client";
	}
	@RequestMapping("export")
	public String export() {
		return "export";
	}
}
