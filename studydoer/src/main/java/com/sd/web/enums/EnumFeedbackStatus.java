package com.sd.web.enums;

public enum EnumFeedbackStatus {

	PENDING(100L, "PENDING"),
	PUBLISH(200L, "PUBLISH"),
	DELETED(999L, "DELETED")
	;
	
	private Long statusId;
	private String status;
	
	private EnumFeedbackStatus(Long statusId, String status){
		this.statusId = statusId;
		this.status = status;
	}

	public Long getStatusId() {
		return statusId;
	}

	public String getStatus() {
		return status;
	}
	
}
