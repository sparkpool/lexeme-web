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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.pojo.document.DocumentPojo;
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
	@ResponseBody
	public String uploadFile(
	@RequestParam("file") List<MultipartFile> files, 
	@RequestParam("category") List<String> category,
	@RequestParam(value = "courseId", required = false) List<String> courseIds,
	@RequestParam(value = "description", required = false) List<String> descriptions) {
		StringBuilder msgs = new StringBuilder();
		StringBuilder errorMsgs1 = new StringBuilder("File ");
		StringBuilder errorMsgs2 = new StringBuilder("File ");
		Set<DocumentPojo> validFiles = new HashSet<DocumentPojo>();
        int i=0;
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
					validFiles.add(new DocumentPojo(file, descriptions.get(i), category.get(i), courseIds.get(i)));
				}
				i++;
			}
			
			if(errorMsgs1.length() > 5){
				errorMsgs1.append(" ").append(MessageConstants.FILE_NOT_ALLOWED);
			}else {
				errorMsgs1.setLength(0);
			}
			if(errorMsgs2.length() > 5){
				errorMsgs1.append("<br />").append(errorMsgs2.append(" ").append(MessageConstants.FILE_SIZE_NOT_ALLOWED));
			}
			for(DocumentPojo document : validFiles){
				try {
				String message = getDocumentService().uploadFile(document.getCategory(), document.getCourseID(),
						document.getDescription(), document.getFile());		
				msgs.append("File ").append(document.getFile().getOriginalFilename()).append(" ").append(message).append("<br />");
				} catch (Exception e) {
					logger.error("Exception occured : " + e.getMessage());
				}
			}
		   return msgs.append("<br />").append(errorMsgs1.toString()).toString(); 
	}

	public IDocumentService getDocumentService() {
		return documentService;
	}

}
