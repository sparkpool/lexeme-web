package com.lexeme.web.controller.document;

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
			@RequestParam("file") MultipartFile file, 

	@RequestParam("category") String category,
	@RequestParam(value = "courseId", required = false) String courseId,
	@RequestParam(value = "description", required = false) String description) {
		ModelAndView model = new ModelAndView();
		model.setViewName("uploadSolution");
		try {
			String fileName = file.getOriginalFilename();
			logger.info("FileName is " + fileName);
			if (!FileOperationsUtil.isFileAllowed(fileName)) {
				logger.info("File with given extension not allowed " + fileName);
				model.addObject("errorMsg", MessageConstants.FILE_NOT_ALLOWED);
			} else {
				String message = getDocumentService().uploadFile(category, courseId,
				description, file);
				model.addObject("msg", message);
			}
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
