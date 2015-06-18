package com.lexeme.web.controller.document;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.service.document.IDocumentService;
import com.lexeme.web.util.FileOperationsUtil;

@Controller
@RequestMapping("/doc")
public class DocumentUploadController {

	private static final Logger logger = Logger
			.getLogger(DocumentUploadController.class);

	@Autowired
	private IDocumentService documentService;

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	@RequiresAuthentication
	public String uploadFile() {
		return "uploadSolution";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@RequiresAuthentication
	public ModelAndView uploadFile(
			@RequestParam("file") List<MultipartFile> files, 

	@RequestParam("category") String category,
	@RequestParam(value = "courseId", required = false) String courseId,
	@RequestParam(value = "description", required = false) String description) {
		ModelAndView model = new ModelAndView();
		model.setViewName("uploadSolution");
		StringBuilder msgs = new StringBuilder();
		StringBuilder errorMsgs1 = new StringBuilder("File ");
		StringBuilder errorMsgs2 = new StringBuilder("File ");
		Set<MultipartFile> validFiles = new HashSet<MultipartFile>();
		try {
			for(MultipartFile file : files){
				String fileName = file.getOriginalFilename();
				logger.info("FileName is " + fileName);
				if (!FileOperationsUtil.isFileAllowed(fileName)) {
					logger.info("File with given extension not allowed " + fileName);
					errorMsgs1.append(fileName + ", ");
				} else if(file.getSize() > 26214400){
					logger.info("File  " + fileName + "with size greater than 25 MB not allowed");
					errorMsgs2.append(fileName + ", ");
				}else{
					validFiles.add(file);
				}				
			}
			
			if(errorMsgs1.length() > 5){
				errorMsgs1.append(" ").append(MessageConstants.FILE_NOT_ALLOWED);
			}else {
				errorMsgs1.setLength(0);
			}
			if(errorMsgs2.length() > 5){
				errorMsgs1.append("<br />").append(errorMsgs2.append(" ").append(MessageConstants.FILE_SIZE_NOT_ALLOWED));
			}
			for(MultipartFile file : validFiles){
				String message = getDocumentService().uploadFile(category, courseId,
						description, file);		
				msgs.append("File ").append(file.getOriginalFilename()).append(" ").append(message).append("<br />");
			}
			if(msgs.length() > 0){
				model.addObject("msg", msgs.toString());				
			}
			model.addObject("errorMsg", errorMsgs1.toString()); 
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}

	public IDocumentService getDocumentService() {
		return documentService;
	}

}
