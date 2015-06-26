package com.lexeme.web.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

public class FileOperationsUtil {

	private static Map<String, Boolean> validFileExtensions = new HashMap<String, Boolean>();

	private static final Logger logger = Logger
			.getLogger(FileOperationsUtil.class);

	static {
		String fileExtensions = PropertiesUtil
				.getProjectProperty("document.not.allowed.extensions");
		logger.info("File Extensions from property file is " + fileExtensions);
		if (StringUtils.isNotBlank(fileExtensions)) {
			for (String fileExtension : fileExtensions.split(",")) {
				validFileExtensions.put(fileExtension.trim(), true);
			}
		}
	}

	public static boolean isFileAllowed(String fileName) {
		String[] fileExtensions = fileName.split("\\.");
		if (fileExtensions.length > 1) {
			return !validFileExtensions.containsKey(fileExtensions[1].trim());
		}
		return false;
	}

	public static String uploadUnverifiedFile(Long documentId, MultipartFile file) {
		InputStream inputStream = null;
		OutputStream outputStream = null;
		try {
			inputStream = file.getInputStream();
            String filePath = PropertiesUtil.getProjectProperty("unverified.prefix");
            String fileFullName = documentId + "#" + file.getOriginalFilename();
            String fileFullPath = filePath + fileFullName;
			File newFile = new File(fileFullPath);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			return fileFullName;
		} catch (IOException e) {
			logger.error("Exception occured : " + e.getMessage());
		}finally{
			try {
				inputStream.close();
				outputStream.close();
			} catch (IOException e) {
				logger.error("Exception occured : " + e.getMessage());
			}
		}
		return null;
	}
	
	public static boolean moveFile(String oldFile, String newFile){
		logger.info("Old and New File to move is " + oldFile + " " + newFile);
		File file = new File(oldFile);
		if(file.exists()){
			return file.renameTo(new File(newFile));
		}	
		return false;
	}
	
	public static boolean createDir(String folderPath){
		logger.info("Folder Path to createdirectory is " + folderPath);
		File file = new File(folderPath);
		if(!file.exists()){
			return file.mkdir();
		}
		return false;
	}
}
