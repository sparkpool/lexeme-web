package com.lexeme.web.enums;

public enum EnumDocumentCategory {

	HOMEWORK("Homework"),
	NOTES("Notes"),
	ESSAY("Essay"),
	OTHER("Other"),
	;
	
	private EnumDocumentCategory(String category){
		this.category = category;
	}
	
	private String category;

	public String getCategory() {
		return category;
	}
	
}
