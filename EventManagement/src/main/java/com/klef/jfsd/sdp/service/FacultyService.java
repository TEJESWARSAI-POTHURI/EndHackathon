package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.model.Faculty;

public interface FacultyService 
{
	public String FacultyRegistration(Faculty faculty);
	public Faculty checkFacultyLogin(String email,String password);

}
