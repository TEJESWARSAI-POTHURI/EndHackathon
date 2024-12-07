package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService 
{
	public String StudentRegistration(Student student);
	public Student checkstulogin(String email,String pwd);
}
