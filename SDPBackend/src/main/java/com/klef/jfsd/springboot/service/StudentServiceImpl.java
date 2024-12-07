package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminEventRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepository repository;

	

	@Override
	public String addStudent(Student student) {
		// TODO Auto-generated method stub
		repository.save(student);
		return "Student added successfully...!" ;
	}

	@Override
	public List<Student> viewallStudents() {
		// TODO Auto-generated method stub
		return	(List<Student>) repository.findAll();
		 
	}

}
