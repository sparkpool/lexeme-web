package com.sd.web.enums;

public enum EnumTokenType {

	UV(101L, "UNVERIFIED"),
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
