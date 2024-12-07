package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{

	
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public String StudentRegistration(Student student) {
		studentRepository.save(student);
		return "Student Registered Successfully";
	}

	@Override
	public Student checkstulogin(String email, String pwd) {
		return studentRepository.checkstulogin(email, pwd);
	}
	
}
