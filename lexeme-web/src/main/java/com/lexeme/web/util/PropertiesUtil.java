package com.lexeme.web.util;

import java.util.Properties;

public class PropertiesUtil {

	private static Properties projProperties;
	
	public static void setProjectProperties(Properties projectProperties){
		projProperties = projectProperties;
	}
	
	public static String getProjectProperty(String key) {
		return projProperties.getProperty(key);
	}
}
