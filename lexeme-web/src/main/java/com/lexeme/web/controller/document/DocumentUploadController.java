package com.lexeme.web.controller.document;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.pojo.document.DocumentUpload;
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
	public String uploadFile(){
		return "upload";
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@RequiresAuthentication
	public ModelAndView uploadFile(DocumentUpload documentUpload) {
		ModelAndView model = new ModelAndView();
		model.setViewName("uploadSolution");
		try {
			String fileName = documentUpload.getFile().getOriginalFilename();
			if (!FileOperationsUtil.isFileAllowed(fileName)) {
				logger.info("File with given extension not allowed " + fileName);
				model.addObject("errorMsg", MessageConstants.FILE_NOT_ALLOWED);
			} else {
				getDocumentService().uploadFile(documentUpload.getCategory(), documentUpload.getCourseId(),
						documentUpload.getDescription(), documentUpload.getFile());
				model.addObject("msg", MessageConstants.FILE_UPLOAD_SUCCESS);
			}
		} catch (Exception e) {
			logger.error("Exception occured : "+ e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}

	public IDocumentService getDocumentService() {
		return documentService;
	}

}
