package com.lexeme.web.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;

import com.lexeme.web.constants.RegexConstants;

public class LexemeUtil {

	private static final Logger logger = Logger.getLogger(LexemeUtil.class);

	private static final Pattern emailPattern = Pattern.compile(RegexConstants.EMAIL_REGEX);
	
	private static final Pattern userNamePattern = Pattern.compile(RegexConstants.USERNAME_REGEX);
			
	public static String getHashOfString(String plainString) throws NoSuchAlgorithmException{
		MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(plainString.getBytes());
 
        byte byteData[] = md.digest();
 
        //convert the byte to hex format method 1
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }
 
        logger.info("Hex format : " + sb.toString());
 
        //convert the byte to hex format method 2
        StringBuffer hexString = new StringBuffer();
    	for (int i=0;i<byteData.length;i++) {
    		String hex=Integer.toHexString(0xff & byteData[i]);
   	     	if(hex.length()==1) hexString.append('0');
   	     	hexString.append(hex);
    	}
    	logger.info("Hex format : " + hexString.toString());
		return hexString.toString();
	}
	
	public static boolean validateEmail(String email){
		if(email.length() > 1 && email.length() <= 50){
			Matcher matcher = emailPattern.matcher(email);
			return matcher.matches();	
		}
		return false;
	}
	
	public static boolean validateUserName(String userName){
		if(userName.length() >= 6 && userName.length() <=12){
			Matcher matcher = userNamePattern.matcher(userName);
			return matcher.matches();
		}
		return false;
	}
	
	public static boolean validatePassword(String password){
		if(password.length() >=8 && password.length() <=16){
			return true;
		}
		return false;
	}
	
	public static String createHashOfParameters(List<String> params) throws NoSuchAlgorithmException{
		StringBuilder strBuilder = new StringBuilder();
		if(params!=null && params.size() > 0){
			for(String param : params){
				strBuilder.append(param).append("|");				
			}
			return getHashOfString(strBuilder.toString());
		}
		return null;
	}
	
	public static String getRandomDigit(){
		Random random = new Random();
		return String.valueOf(random.nextLong());
	}
	
	public static String getHashPassword(String password, String salt) throws NoSuchAlgorithmException{
		return new Sha256Hash(password, salt, 1024).toBase64();
	}
	
	public static String getSalt(){
		RandomNumberGenerator rng = new SecureRandomNumberGenerator();
		return rng.nextBytes().toHex();
	}
	
	public static List<String> getListofStringDividedByDelimiter(String query, String delimiter){
		if(StringUtils.isBlank(query)){
			return null;
		}
		if(StringUtils.isBlank(delimiter)){
			delimiter = ",";
		}
		String[] splitQuery = query.split(delimiter);
		List<String> list =  new ArrayList<String>();
		for(String q : splitQuery){
			if(StringUtils.isNotBlank(q)){
				list.add(q.trim().toLowerCase());	
			}
		}
		return list;
	}
}
