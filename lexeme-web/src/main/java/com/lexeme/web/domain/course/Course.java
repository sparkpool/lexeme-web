package com.lexeme.web.domain.course;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.lexeme.web.domain.user.User;


@Entity
@Table (name ="COURSE")
public class Course implements Serializable{

	private static final long serialVersionUID = 6948604767856192721L;

	@Id
	@Column (name="ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name="COURSE_ID", length=10)
	private String courseID;
	
	@Column(name="UNIVERSITY", length=150)
	private String university;

	@Column(name="SUB_NAME", length=50)
	private String subjectName;
	
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "courses")
	private Set<User> courses;
	
	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getUniversity() {
		return university;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public Set<User> getCourses() {
		return courses;
	}

	public void setCourses(Set<User> courses) {
		this.courses = courses;
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
		Course other = (Course) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
}
