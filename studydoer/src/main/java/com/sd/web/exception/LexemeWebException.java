package com.sd.web.exception;

public class LexemeWebException extends RuntimeException{

	private static final long serialVersionUID = 6268309955901390476L;

	public LexemeWebException() {
		super();
	}
	
	public LexemeWebException(String message){
		super(message);
	}
	
	public LexemeWebException(String message, Throwable cause){
		super(message, cause);
	}
}
