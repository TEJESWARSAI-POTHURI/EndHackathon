package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Event;

public interface EventService 
{
	public String EventRegistration(Event event);
	public String updateevent(Event e);
	public List<Event> viewallevents();
}
