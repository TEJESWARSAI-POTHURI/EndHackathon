package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.AdminEvent;

public interface AdminService {

	public Admin checkadminlogin(String uname, String upwd);
	
   public long count();
}
