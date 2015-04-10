package com.lexeme.web.controller.solution;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class SolutionController {

	@RequestMapping(value = "/solution", method = RequestMethod.GET)
	public String solution(){
		return "solution";
	}
	
	@RequestMapping(value = "/solution", method = RequestMethod.POST)
	public String solution(MultipartHttpServletRequest request){
		return "solution";
	}
}
