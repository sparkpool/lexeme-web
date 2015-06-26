package com.lexeme.web.controller.document;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lexeme.web.service.document.IDocumentService;

@Controller
@RequestMapping("/doc")
public class DocumentDownloadController {

	public IDocumentService getDocumentService() {
		return documentService;
	}

	private static final Logger logger = Logger.getLogger(DocumentDownloadController.class);
	
	@Autowired
	private IDocumentService documentService;
	
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	@RequiresAuthentication
	public void downloadDocument(@RequestParam ("docId") Long documentId,
			HttpServletRequest request, HttpServletResponse response){
		FileInputStream inputStream = null;
		OutputStream outStream = null;
		try{
			ServletContext context = request.getServletContext();
			String filePath = getDocumentService().getFilePathOfDocumentID(documentId);
			logger.info("File PAth from DB is " + filePath);
			if(StringUtils.isBlank(filePath)){
				response.setStatus(HttpStatus.NOT_FOUND.value());
				return;
			}
			File file = new File(filePath);
			inputStream = new FileInputStream(file);
			
			response.setContentType(context.getMimeType(filePath));
	        response.setContentLength((int)file.length());
	        response.setHeader("Content-Disposition","attachment; filename=\"" + file.getName() +"\"");
	 
	        outStream = response.getOutputStream();
	        FileCopyUtils.copy(inputStream, outStream);
		}catch(Exception e){
			logger.error("Exception occured " + e);
		}finally{
			try {
				if (null != inputStream)
					inputStream.close();
				if (null != inputStream)
					outStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
