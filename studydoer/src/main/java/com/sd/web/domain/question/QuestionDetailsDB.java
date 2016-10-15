package com.sd.web.domain.question;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.sd.web.domain.user.User;

@Entity
@Table (name ="QUESTION_DETAILS")

public class QuestionDetailsDB implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3043161377666924661L;
	
	@Id
	@Column (name="ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	
	@Column(name="QUESTION_ID")
	private Long quesID;
	
	
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "CUSTOMER_ID", nullable = false)
	private User customer;
	
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "ASSIGN_TO_ID", nullable = true)
	private User AssignedTo;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getQuesID() {
		return quesID;
	}

	public void setQuesID(Long quesID) {
		this.quesID = quesID;
	}

	public User getCustomerID() {
		return customer;
	}

	public void setUserID(User customer) {
		this.customer = customer;
	}

	
	public User getAssignedToID() {
		return AssignedTo;
	}

	public void setAssignedToID(User AssignedTo) {
		this.AssignedTo = AssignedTo;
	}
	


	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		QuestionDetailsDB other = (QuestionDetailsDB) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
