package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.repository.EventRepository;
import com.klef.jfsd.sdp.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService {
	@Autowired
	private FacultyRepository facultyRepository;

	@Autowired
	private EventRepository eventRepository;

	@Override
	public Faculty checkFacultyLogin(String email, String password) {
		return facultyRepository.checkFacultyLogin(email, password);
	}

	@Override
	public String FacultyRegistration(Faculty faculty) {
		facultyRepository.save(faculty);
		return "Faculty Registered Successfully";
	}

}
