package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminEventService;
import com.klef.jfsd.springboot.service.StudentService;

@RestController
@RequestMapping("student")
public class StudentController {
	@Autowired
	private StudentService service;
	@Autowired
	private AdminEventService adminService;

	// This method is for finding the events that are registered by the admin.
	@GetMapping("checkevents")
	public List<AdminEvent> studentEvents() {
		return adminService.viewevents();
	}

	/*
	 * //this method is for making the student to get registered foe the evetns.
	 * 
	 * @PostMapping("register") public String register(@RequestBody Student s) {
	 * return service.registerEvent(s); }
	 * 
	 * //this method is for listing out all the evetns that the student registered.
	 * 
	 * @GetMapping("registeredevents") public List<Student> registeredevents() {
	 * return service.registeredEvents(); }
	 * 
	 * @DeleteMapping("unregister") public String unregister(@RequestParam("id") int
	 * eid) { return service.deleteregisteredevent(eid); }
	 */
}
