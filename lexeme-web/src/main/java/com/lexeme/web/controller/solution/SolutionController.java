package com.lexeme.web.controller.solution;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SolutionController {

	@RequestMapping(value = "/library", method = RequestMethod.GET)
	public String solution(){
		return "library";
	}
	
}
