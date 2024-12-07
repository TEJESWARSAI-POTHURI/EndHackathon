package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>
{
	@Query("select s from Student s where s.email=?1 and s.password=?2")
	public Student checkstulogin(String email, String pwd);
}
