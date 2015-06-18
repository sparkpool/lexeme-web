package com.lexeme.web.service.course.impl;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.domain.course.Course;
import com.lexeme.web.service.course.ICourseService;

@Service
public class CourseServiceImpl implements ICourseService{
	
	private static final Logger logger = Logger.getLogger(CourseServiceImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Course getCourseFromCourseId(String courseId){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("GET.COURSE");
		return (Course)query.setParameter("courseID", courseId).uniqueResult();
	}
	
	@Override
	public Course saveCourseIfNotExist(String courseId){
		Course course = getCourseFromCourseId(courseId);
		if(course == null){
			course = new Course();
			course.setCourseID(courseId);
			Long id = (Long)getSessionFactory().getCurrentSession().save(course);
			logger.info("Course saved with id " + id);
		}
		return course;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
