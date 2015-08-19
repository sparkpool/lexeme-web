package com.sd.web.domain.question;


import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.sd.web.domain.user.User;


@Entity
@Table (name ="QUESTION")
/*@NamedQueries({
	@NamedQuery(name = "GET.QUESTION", query="SELECT q FROM Question q WHERE q.ID = :ID"),
	@NamedQuery(name="UPDATE.QUESTION", query="")
})*/

public class Questions implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column (name="ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@Column(name="USER_ID", length=45)
	private User userID;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "REVIEW_BY")
	private User reviewBy;
	
	@Column(name="STATUS", length=50)
	private Long status;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "DISPLAY_NAME", length = 100)
	private String displayName;
	
	@Column(name = "SUBJECT", length = 100)
	private String subject;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_DATE", nullable = false, updatable = false)
	private Date createDt;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_DATE", insertable = false)
	private Date updateDt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "DEADLINE_DATE", insertable = false)
	private Date deadlineDt;
	
	@Column(name = "ATTACHMENT", length = 150)
	private String attachment;
	
	@Column(name = "AMOUNT", length = 150)
	private double amount;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUserID() {
		return userID;
	}

	public void setUserID(User user) {
		this.userID = user;
	}

	public String getAttachment() {
		return attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getStatus() {
		return status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}


	public User getReviewBy() {
		return reviewBy;
	}

	public void setReviewBy(User reviewBy) {
		this.reviewBy = reviewBy;
	}

	public Date getDeadlineDt() {
		return deadlineDt;
	}

	public void setDeadlineDt(Date deadlineDt) {
		this.deadlineDt = deadlineDt;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public Date getUpdateDt() {
		return updateDt;
	}

	public void setUpdateDt(Date updateDt) {
		this.updateDt = updateDt;
	}
	
	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}


	@Override
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
		Questions other = (Questions) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	
}
