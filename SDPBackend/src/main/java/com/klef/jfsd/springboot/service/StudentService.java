package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	
	public String addStudent(Student student);

	

	public List<Student> viewallStudents();
	
	

}
