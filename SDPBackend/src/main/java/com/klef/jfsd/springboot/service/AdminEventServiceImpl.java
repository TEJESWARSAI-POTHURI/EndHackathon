package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.repository.AdminEventRepository;

@Service
public class AdminEventServiceImpl implements AdminEventService {

	@Autowired
	private AdminEventRepository repository;



	@Override
	public String addevent(AdminEvent a) {
		// TODO Auto-generated method stub
		repository.save(a);
		return "Event Added Succesfully";
	}

	@Override
	public String updateevent(AdminEvent a) {
		Optional<AdminEvent> obj = repository.findById(a.getEid());
		if (obj.isPresent()) {
			AdminEvent admin = obj.get();

			admin.setElocation(a.getElocation());
			admin.setEincharge(a.getEincharge());
			admin.setEcategory(a.getEcategory());
			admin.setEpoints(a.getEpoints());
			admin.setEincharge(a.getEincharge());

			repository.save(admin);

			return "Event data is Updated";
		} else {
			return "Ooops...Event ID Not Found..!";
		}
	}

	@Override
	public List<AdminEvent> viewevents() {
		// TODO Auto-generated method stub

		return (List<AdminEvent>) repository.findAll();
	}

	@Override
	public String deleteevent(int eid) {

		Optional<AdminEvent> obj = repository.findById(eid);
		String msg = null;
		if (obj.isPresent()) {
			AdminEvent admin = obj.get();
			repository.delete(admin);
			msg = "Event details deleted sucessfully...!";

		} else {
			msg = "Event Not Found";
		}

		return msg;

	}



}
