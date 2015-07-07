package com.sd.web.listener;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.sd.web.util.PropertiesUtil;

public class StudyDoerStartupListener implements ServletContextListener{

	private static final Logger logger = Logger.getLogger(StudyDoerStartupListener.class);
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		logger.info("Study Doer Startup Servlet Listener Started");
		
		String profile = System.getProperty("platform_name");
		String projectProFileName = profile + "/project.properties";
		PropertiesUtil.setProjectProperties(getProperties("/" + projectProFileName));
		logger.info("Study Doer Startup Servlet Listener Completed");
	}
	
	private Properties getProperties(String fileName) {
		
		Properties properties = new Properties();
		InputStream fis = StudyDoerStartupListener.class.getResourceAsStream(fileName);
		try {
			properties.load(fis);
		} catch (IOException ex) {
			logger.error("Exception occurred in loading propeties" + ex);
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
