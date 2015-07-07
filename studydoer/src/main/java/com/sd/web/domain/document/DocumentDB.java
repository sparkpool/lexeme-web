package com.sd.web.domain.document;

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

import com.sd.web.domain.course.Course;
import com.sd.web.domain.user.User;

@Entity
@Table(name = "DOCUMENT_DB")
@NamedQueries({
	@NamedQuery(name="GET.BYID", query="SELECT D FROM DocumentDB D where D.id = :id"),
	@NamedQuery(name="GET.BYKEYWORDS", query="SELECT D FROM DocumentDB D where D.description like :keyword and D.status = :status")
})
public class DocumentDB implements Serializable{

	private static final long serialVersionUID = -3883463540747444104L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Override
	public String toString() {
		return "DocumentDB [id=" + id + "]";
	}

	@Column(name = "CATEGORY", length = 50, nullable = false)
	private String category;
	
	@Column(name = "PATH", length = 150)
	private String path;
	
	@Column(name = "DISPLAY_NAME", length = 100)
	private String displayName;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "STATUS", nullable = false)
	private Long status;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	private User user;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "REVIEW_BY")
	private User reviewBy;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "COURSE_ID")
	private Course course;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_TIME", nullable = false, updatable = false)
	private Date createDt;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_TIME", insertable = false)
	private Date modifiedDt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getReviewBy() {
		return reviewBy;
	}

	public void setReviewBy(User reviewBy) {
		this.reviewBy = reviewBy;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public Date getModifiedDt() {
		return modifiedDt;
	}

	public void setModifiedDt(Date modifiedDt) {
		this.modifiedDt = modifiedDt;
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
		DocumentDB other = (DocumentDB) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
