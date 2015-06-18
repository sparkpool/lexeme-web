package com.lexeme.web.service.course;

import com.lexeme.web.domain.course.Course;

public interface ICourseService {

	public Course getCourseFromCourseId(String courseId);
	public Course saveCourseIfNotExist(String courseId);

}
