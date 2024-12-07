package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private StudentRepository studentRepository;

	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

}
