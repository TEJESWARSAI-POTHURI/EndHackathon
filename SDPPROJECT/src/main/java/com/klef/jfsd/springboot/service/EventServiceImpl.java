package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.repository.EventRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService{

    @Autowired
    private EventRepository eventRepository;

    // Method to save event registration
    public String registerEvent(Event eventreg) {
         eventRepository.save(eventreg);
         return "Event Registered Successfully";
    }
}
