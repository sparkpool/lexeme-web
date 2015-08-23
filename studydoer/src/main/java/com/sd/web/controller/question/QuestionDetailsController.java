package com.sd.web.controller.question;

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

import com.sd.web.constants.MessageConstants;
import com.sd.web.controller.document.DocumentUploadController;
import com.sd.web.pojo.document.DocumentPojo;
import com.sd.web.pojo.question.QuestionDetails;
import com.sd.web.service.document.IDocumentService;
import com.sd.web.util.FileOperationsUtil;


@Controller
@RequestMapping("/askQues")
public class QuestionDetailsController {
	private static final Logger logger = Logger
			.getLogger(QuestionDetailsController.class);

	
	@RequestMapping(value = "/askQues", method = RequestMethod.POST)
	@RequiresAuthentication
	@ResponseBody
	public String uploadFile(
	@RequestParam("file") List<MultipartFile> files, 
	@RequestParam("subject") List<String> subject,
	@RequestParam(value = "cId", required = false) List<String> courseIds,
	@RequestParam(value = "description", required = false) List<String> descriptions) {
		StringBuilder msgs = new StringBuilder();
		StringBuilder errorMsgs1 = new StringBuilder("File ");
		StringBuilder errorMsgs2 = new StringBuilder("File ");
		Set<QuestionDetails> validFiles = new HashSet<QuestionDetails>();
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
					validFiles.add(new QuestionDetails(file, descriptions.get(i).trim(), category.get(i).trim(), courseIds.get(i).trim()));
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
			for(QuestionDetails document : validFiles){
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

}
