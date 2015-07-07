package com.sd.web.service.course;

import com.sd.web.domain.course.Course;

public interface ICourseService {

	public Course getCourseFromCourseId(String courseId);
	public Course saveCourseIfNotExist(String courseId);

}
