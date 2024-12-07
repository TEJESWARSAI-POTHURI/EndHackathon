package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminEventService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller

public class AdminEventController {
	@Autowired
	private AdminEventService service;

	@Autowired
	private StudentService studentservice;

	/*
	 * @GetMapping("/") public ModelAndView home() { ModelAndView mv= new
	 * ModelAndView(); mv.setViewName("home"); return mv; }
	 */
	
	

	@PostMapping("addevent")
	public String addevent(@RequestBody AdminEvent a) {
		return service.addevent(a);
	}

	@GetMapping("viewevents")
	public List<AdminEvent> viewevents() {
		return service.viewevents();
	}

	@PutMapping("updateevent")
	public String updateevent(@RequestBody AdminEvent a) {
		return service.updateevent(a);
	}

	@DeleteMapping("deleteevent")
	public String deleteevent(@RequestParam("id") int id) {
		return service.deleteevent(id);
	}

	

}
