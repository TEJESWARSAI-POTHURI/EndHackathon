package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.AdminEvent;
public interface AdminEventService {
	


	public String addevent(AdminEvent a);

	public String updateevent(AdminEvent a);

	public List<AdminEvent> viewevents();

	public String deleteevent(int eid);

}
