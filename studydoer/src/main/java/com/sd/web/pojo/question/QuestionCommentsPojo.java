package com.sd.web.pojo.question;

import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class QuestionCommentsPojo {
	
	private Long questionId;
	private String userID;
	private String comment;
	private MultipartFile file;
	
	public boolean validate(){
		  if(questionId == null ||  StringUtils.isBlank(comment)){
			  return false;
		  }
		  return true;
		}
		
		public QuestionCommentsPojo(MultipartFile file, Long questionID, String comment ){
			this.file = file;
			this.comment = comment;
			this.questionId = questionID;
		}
		
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((file.getOriginalFilename() == null) ? 0 : file.getOriginalFilename().hashCode());
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			QuestionCommentsPojo other = (QuestionCommentsPojo) obj;
			if (file == null) {
				if (other.file != null)
					return false;
			} else if (!file.getOriginalFilename().equals(other.file.getOriginalFilename()))
				return false;
			return true;
		}

		public MultipartFile getFile() {
			return file;
		}

		public void setFile(MultipartFile file) {
			this.file = file;
		}

		public QuestionCommentsPojo(){}
		
		public Long getQuestionId() {
			return questionId;
		}
		public void setQuestionId(Long questionId) {
			this.questionId = questionId;
		}
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		
		public String getComments() {
			return comment;
		}
		public void setComments(String comment) {
			this.comment = comment;
		}

		@Override
		public String toString() {
			return "QuestionCommentsPojo [questionId=" + questionId + ", userID=" + userID
					+ ", comment=" + comment + "]";
		}

}
