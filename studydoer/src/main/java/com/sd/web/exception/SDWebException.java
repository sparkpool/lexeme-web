package com.sd.web.exception;

public class SDWebException extends RuntimeException{

	private static final long serialVersionUID = 6268309955901390476L;

	public SDWebException() {
		super();
	}
	
	public SDWebException(String message){
		super(message);
	}
	
	public SDWebException(String message, Throwable cause){
		super(message, cause);
	}
}
