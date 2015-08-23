package com.sd.web.pojo.question;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class QuestionDetailsPojo {
	private Long questionID;
	private Long customerID;
	private Long assignedToID;
	
	public boolean validate(){
		  if(questionID == null ||  customerID ==null){
			  return false;
		  }
		  return true;
		}
	
	public QuestionDetailsPojo(Long questionID, Long customerID ){
		this.questionID = questionID;
		this.customerID = customerID;
	}
	
	public Long getQuestionId() {
		return questionID;
	}
	public void setQuestionId(Long questionID) {
		this.questionID = questionID;
	}
	
	public Long getCustomerId() {
		return customerID;
	}
	public void setCustomerId(Long customerID) {
		this.customerID = customerID;
	}
	
	public Long getAssignedToId() {
		return assignedToID;
	}
	public void setAssignedToId(Long assignedToID) {
		this.assignedToID = assignedToID;
	}
	
	@Override
	public String toString() {
		return "QuestionDetailsPojo [questionId=" + questionID + ", customerID=" + customerID
				+ ", assignedToID=" + assignedToID + "]";
	}
}
