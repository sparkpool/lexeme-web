package com.lexeme.admin.web.controller;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.admin.web.service.IDocumentAdminService;

@Controller
@RequestMapping("/admin/docs")
public class DocumentPanelController {

	private static final Logger logger = Logger.getLogger(DocumentPanelController.class);
	
	@Autowired
	private IDocumentAdminService documentAdminService;

	public IDocumentAdminService getDocumentAdminService() {
		return documentAdminService;
	}
	
	@RequestMapping(value = "/unverified", method = RequestMethod.GET)
	@RequiresRoles("MODERATOR")
	public ModelAndView getAllUnverifiedDocuments(){
		ModelAndView model = new ModelAndView();
		model.setViewName("documentsPanel");
		try{
			
		}catch(Exception e){
			logger.error("Exception occured " + e.getMessage());
		}
		return model;
	}
}
