package com.klef.jfsd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.service.EventService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;

	@GetMapping("eventreg")
	public ModelAndView eventreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("eventreg");
		return mv;
	}

	@PostMapping("insertevent")
	public ModelAndView insertevent(HttpServletRequest request) {
		String Eventname = request.getParameter("eventName");
		String Date = request.getParameter("date");
		String Domain = request.getParameter("domain");
		double Points = Double.parseDouble(request.getParameter("points"));
		String Location = request.getParameter("location");

		Event event = new Event();
		event.setEventname(Eventname);
		event.setDate(Date);
		event.setDomain(Domain);
		event.setLocation(Location);
		event.setPoints(Points);

		String msg = eventService.EventRegistration(event);

		ModelAndView mv = new ModelAndView("regsuccess");
		mv.addObject("message", msg);

		return mv;

	}
	@GetMapping("updateevent")
	 public ModelAndView updateevent()
	 {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("updateevent");
	  return mv;
	 }
	 
	 @PostMapping("update")
	    public ModelAndView update(HttpServletRequest request)
	    {
	       int eid =Integer.parseInt(request.getParameter("Eventid"));
	       String name = request.getParameter("Eventname");
	       String date = request.getParameter("Date");
	       String domain = request.getParameter("Domain");
	       double points = Double.parseDouble(request.getParameter("Points"));
	       String location = request.getParameter("Location");
	       

	       Event event = new Event();
	       event.setId(eid);
	       event.setEventname(name);
	       event.setDate(date);
	       event.setDomain(domain);
	       event.setLocation(location);
	       event.setPoints(points);
	       
	       String msg = eventService.updateevent(event);
	       
	       ModelAndView mv = new ModelAndView("updatesuccess");
	       mv.addObject("message", msg);
	     
	       return mv;

	    }
}
