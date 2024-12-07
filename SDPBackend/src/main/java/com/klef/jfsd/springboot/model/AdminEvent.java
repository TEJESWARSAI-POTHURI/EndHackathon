package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "events_data")
public class AdminEvent {
	
	@Id
	@Column(name = "event_id", nullable = false, length = 20)
	private int eid;
	@Column(name = "event_name", nullable = false, length = 100)
	private String ename;
	@Column(name = "event_location", nullable = false, length = 50)
	private String elocation;
	@Column(name = "event_points", nullable = false, length = 4)
	private String epoints;
	@Column(name = "event_category", nullable = false, length = 20)
	private String ecategory;
	@Column(name="event_incharge",length=100,nullable = false)
	private String eincharge;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getElocation() {
		return elocation;
	}

	public void setElocation(String elocation) {
		this.elocation = elocation;
	}

	public String getEpoints() {
		return epoints;
	}

	public void setEpoints(String points) {
		this.epoints = points;
	}

	public String getEcategory() {
		return ecategory;
	}

	public void setEcategory(String ecategory) {
		this.ecategory = ecategory;
	}

	public String getEincharge() {
		return eincharge;
	}

	public void setEincharge(String eincharge) {
		this.eincharge = eincharge;
	}
	

}
