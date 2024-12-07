package com.klef.jfsd.sdp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Event;

@Repository
public interface EventRepository  extends CrudRepository<Event, Integer>
{

}
