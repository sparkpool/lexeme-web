package com.lexeme.web.enums;

public enum EnumDocumentStatus {

	PENDING(101L, "PENDING"),
	VERIFIED(201L, "VERIFIED"),
	DELETED(999L, "DELETED"),
	;
	
	private Long documentStatusId;
	private String documentStatus;
	
	private EnumDocumentStatus(Long documentStatusId, String documentStatus){
		this.documentStatusId = documentStatusId;
		this.documentStatus = documentStatus;
	}

	public Long getDocumentStatusId() {
		return documentStatusId;
	}

	public void setDocumentStatusId(Long documentStatusId) {
		this.documentStatusId = documentStatusId;
	}

	public String getDocumentStatus() {
		return documentStatus;
	}

	public void setDocumentStatus(String documentStatus) {
		this.documentStatus = documentStatus;
	}
	
}
