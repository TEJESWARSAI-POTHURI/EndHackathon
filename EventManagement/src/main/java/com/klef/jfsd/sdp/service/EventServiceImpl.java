package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.repository.EventRepository;

@Service

public class EventServiceImpl implements EventService
{
	@Autowired
	private EventRepository eventRepository;
	
	public String EventRegistration(Event event) 
	{
		eventRepository.save(event);
		return "Event Registered Successfully";
	}

	@Override
	public List<Event> viewallevents() {
		// TODO Auto-generated method stub
		return (List<Event>) eventRepository.findAll();
	}
	@Override
	 public String updateevent(Event e) 
	 {
	  Event event = eventRepository.findById(e.getId()).get();
	  
	  event.setEventname(e.getEventname());
	  event.setDate(e.getDate());
	  event.setDomain(e.getDomain());
	  event.setLocation(e.getLocation());
	  event.setPoints(e.getPoints());
	  
	  eventRepository.save(event);
	  
	  return "Event Updated Successfully";
	 }
}
