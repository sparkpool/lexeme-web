package com.lexeme.web.controller.solution;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SolutionController {

	@RequestMapping(value = "/library", method = RequestMethod.GET)
	public ModelAndView solution(){
        ModelAndView model = new ModelAndView();
        model.setViewName("library");
        model.addObject("divHide", false);
		return model;
	}
	
}
