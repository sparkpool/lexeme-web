package com.lexeme.web.domain.course;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


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
}
