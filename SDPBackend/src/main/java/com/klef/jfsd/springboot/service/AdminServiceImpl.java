	package com.klef.jfsd.springboot.service;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	
	import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.repository.AdminEventRepository;
import com.klef.jfsd.springboot.repository.AdminRepository;
	
	@Service
	public class AdminServiceImpl implements AdminService {
		@Autowired
		private AdminRepository repoAdminRepository;
		
		@Autowired
		private AdminEventRepository eventRepository;
	
		@Override
		public Admin checkadminlogin(String uname, String upwd) {
			// TODO Auto-generated method stub
			return repoAdminRepository.checkadminlogin(uname, upwd);
		}

		@Override
		public long count() {
			// TODO Auto-generated method stub
			return eventRepository.count() ;
		}

		
	
	}
