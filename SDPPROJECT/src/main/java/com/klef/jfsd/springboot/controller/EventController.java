package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.service.EventService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EventController 
{
	@Autowired
	private EventService eventService;
	
	@GetMapping("register")
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register");
		return mv;
	}
	
	@PostMapping("insertregevent")
    public ModelAndView insertstu(HttpServletRequest request)
    {
       String eventName = request.getParameter("eventName");
       
       Event event=new Event();
       event.setEventName(eventName);
       System.out.println("Event Name: " + event.getEventName());

       
       String msg = eventService.registerEvent(event);
       
       
       ModelAndView mv = new ModelAndView("eventregsuccess");
       mv.addObject("message", msg);
     
       return mv;
    }
}
