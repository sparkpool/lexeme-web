package com.sd.web.controller.general;

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
	
	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy(){
		return "policy";
	}
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(){
		return "faq";
	}
	
	@RequestMapping(value = "/copyrights", method = RequestMethod.GET)
	public String copyrights(){
		return "copyrights";
	}
	
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public String termofuse(){
		return "termofuse";
	}
	
	
}
