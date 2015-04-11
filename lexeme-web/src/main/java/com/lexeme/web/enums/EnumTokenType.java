package com.lexeme.web.enums;

public enum EnumTokenType {

	SUV(101L, "STUDENT_UNVERIFIED"),
	TUV(102L, "TEACHER_UNVERIFIED"),
	FP(103L, "FORGOT_PASSWORD"),
	;
	
	private Long tokenTypeId;
	private String tokenType;
	
	private EnumTokenType(Long tokenTypeId, String tokenType){
		this.tokenTypeId = tokenTypeId;
		this.tokenType = tokenType;
	}

	public Long getTokenTypeId() {
		return tokenTypeId;
	}

	public void setTokenTypeId(Long tokenTypeId) {
		this.tokenTypeId = tokenTypeId;
	}

	public String getTokenType() {
		return tokenType;
	}

	public void setTokenType(String tokenType) {
		this.tokenType = tokenType;
	}

}
