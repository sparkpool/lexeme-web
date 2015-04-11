package com.lexeme.web.listener;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.lexeme.web.util.PropertiesUtil;

public class LexemeStartupListener implements ServletContextListener{

	private static final Logger logger = Logger.getLogger(LexemeStartupListener.class);
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		logger.info("Lexeme Startup Servlet Listener Started");
		
		String profile = System.getProperty("platform_name");
		String projectProFileName = profile + "/project.properties";
		System.out.println("Profile Name is " + profile);
		PropertiesUtil.setProjectProperties(getProperties("/" + projectProFileName));
		logger.info("Lexeme Startup Servlet Listener Completed");
	}
	
	private Properties getProperties(String fileName) {
		
		Properties properties = new Properties();
		InputStream fis = LexemeStartupListener.class.getResourceAsStream(fileName);
		System.out.println("File Input Stream is " + fis);
		try {
			properties.load(fis);
		} catch (IOException ex) {
			System.out.println("Exception occurred in loading propeties" + ex);
		} finally{
			try {
				if(fis!=null){
					fis.close();					
				}
			} catch (IOException e) {
				logger.error("Exception occurred in loading propeties", e);
			}
		}
		return properties;
	}

}
