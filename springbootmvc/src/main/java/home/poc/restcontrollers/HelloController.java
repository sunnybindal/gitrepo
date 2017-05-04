package home.poc.restcontrollers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest")
public class HelloController {
	
	@RequestMapping("/hello")
	public String hello() {
		return "hello and welcome to spring rest.";
	}

}
