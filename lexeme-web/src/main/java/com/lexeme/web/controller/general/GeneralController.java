package com.lexeme.web.controller.general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GeneralController {

	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs(){
		return "aboutUs";
	}
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public String team(){
		return "team";
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(){
		return "contactUs";
	}
	
	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy(){
		return "policy";
	}
}
