package com.sd.web.enums;

public enum EnumContactUsReason {

	ISSUE_WITH_SERVICES(100L, "Issue With Services"),
	ISSUE_WITH_WEBSITE(200L, "Issue With Website"),
	ISSUE_WITH_PAYMENT(300L, "Issue With Payment"),
	ISSUE_WITH_ORDER(400L, "Issue With Order"),
	OTHERS(900L, "Others"),
	;
	
	private Long id;
	private String reason;
	
	private EnumContactUsReason(Long id, String reason){
		this.id = id;
		this.reason = reason;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public static String getReasonById(Long reasonId){
		for(EnumContactUsReason enumContactUsReason : values()){
			if(enumContactUsReason.getId().equals(reasonId)){
				return enumContactUsReason.getReason();
			}
		}
		return null;
	}
}
