package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.AdminEvent;
@Repository
public interface AdminEventRepository extends CrudRepository<AdminEvent, Integer> {

	

	  
	  
}
