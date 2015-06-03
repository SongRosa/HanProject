package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	
	@RequestMapping("/test.do")
	public String site(){
		return "main/test/main";
	}

}
