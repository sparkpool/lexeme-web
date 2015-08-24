package com.sd.web.enums;

public enum EnumFeedbackCategory {

	SUGGESTION(100L,"SUGGESTION"),
	ISSUE(200L, "ISSUE"),
	OTHER(999L, "OTHER")
	;
	
	private String category;
	private Long id;
	
	private EnumFeedbackCategory(Long id, String category){
		this.id = id;
		this.category = category;
	}

	public String getCategory() {
		return category;
	}

	public Long getId() {
		return id;
	}
	
}
