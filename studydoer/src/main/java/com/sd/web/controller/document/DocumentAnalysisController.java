package com.sd.web.controller.document;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/doc/analysis/")
public class DocumentAnalysisController {

	private static final Logger logger = Logger.getLogger(DocumentAnalysisController.class);
	
	@RequestMapping(value = "/like", method = RequestMethod.GET, 
			produces = { "application/json" })
	public void likeDocument(@RequestParam ("docId") Long documentId){
		try{
			logger.info("Request Received with docId " + documentId);
			
		}catch(Exception e){
			logger.error("Exception occured : " + e);
		}
	}

}
