package com.sd.admin.web.controller;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sd.admin.web.service.IDocumentAdminService;
import com.sd.web.constants.MessageConstants;
import com.sd.web.pojo.document.DocumentPojo;

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
	@RequiresAuthentication
	@RequiresRoles("MODERATOR")
	public ModelAndView getAllUnverifiedDocuments(){
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/documentsPanel");
		try{
			List<DocumentPojo> documents = getDocumentAdminService().getUnverifiedDocuments(10);
			model.addObject("documents", documents);
		}catch(Exception e){
			logger.error("Exception occured " + e.getMessage());
		}
		return model;
	}
	
	@RequestMapping(value = "/verify", method = RequestMethod.POST)
	@RequiresAuthentication
	@RequiresRoles("MODERATOR")
	public ModelAndView verifyDocument(@RequestParam("docId") Long documentId){
	  ModelAndView model = new ModelAndView();
	  model.setViewName("admin/documentVerify");
	  try{
		 DocumentPojo documentPojo = getDocumentAdminService().getDocumentFromDocumentId(documentId);
		 logger.info("Document Pojo from DB is " + documentPojo);
		 model.addObject("documentPojo", documentPojo);
	  }catch(Exception e){
		  logger.error("Exception occured " + e.getMessage());
	  }
	  return model;
	}
	
	
	@RequestMapping(value = "/verifyUpdate", method = RequestMethod.POST)
	@RequiresAuthentication
	@RequiresRoles("MODERATOR")
	public ModelAndView verifyDocument(DocumentPojo documentPojo) {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/documentVerify");
		model.addObject("documentPojo", documentPojo);
		logger.info("Document Pojo from client side is " + documentPojo);
		try {
			if(!documentPojo.validate()){
				model.addObject("errorMsg", MessageConstants.MANDATORY_PARAMS);
			}else{
				String result = getDocumentAdminService().saveDocument(documentPojo);
	            if(StringUtils.isBlank(result)){
	            	model.addObject("errorMsg", MessageConstants.INVALID_DOCUMENT);
	            }else{
	            	model.setViewName("admin/documentsPanel");
	            	model.addObject("msg",result);
					List<DocumentPojo> documents = getDocumentAdminService().getUnverifiedDocuments(10);
					model.addObject("documents", documents);
	            }	
			}
		} catch (Exception e) {
			logger.error("Exception occured " + e.getMessage());
			model.addObject("erroMsg",MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}
	
	
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@RequiresAuthentication
	@RequiresRoles("MODERATOR")
	public ModelAndView deleteDocument(@RequestParam("docId") Long documentId){
	  ModelAndView model = new ModelAndView();
	  model.setViewName("admin/documentsPanel");
	  try{
			String result = getDocumentAdminService().deleteDocument(documentId);
			if (StringUtils.isBlank(result)) {
				model.addObject("msg", MessageConstants.DOCUMENT_DELETED);
			} else {
				model.addObject("errorMsg",result);
			}
		  List<DocumentPojo> documents = getDocumentAdminService().getUnverifiedDocuments(10);
		  model.addObject("documents", documents);
	  }catch(Exception e){
		  logger.error("Exception occured during deleting document " + e.getMessage());
		  model.addObject("errorMsg", MessageConstants.ERROR_DOCUMENT_DELETED);
	  }
	  return model;
	}
}
