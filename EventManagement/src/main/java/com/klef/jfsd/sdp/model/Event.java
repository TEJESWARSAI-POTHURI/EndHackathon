package com.klef.jfsd.sdp.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="event")
public class Event 
{
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY) // you can take this manually also through form
	   @Column(name="event_id")
	   private int Id;
	   @Column(name="event_name",nullable=false,length = 50)
	   private String Eventname;
	   @Column(name="event_date",nullable=false,length = 50)
	   private String Date;
	   @Column(name="event_points",nullable=false)
	   private double Points;
	   @Column(name="event_domain",nullable=false,length = 50)
	   private String Domain;
	   @Column(name="event_location",nullable=false,length = 50)
	   private String Location;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEventname() {
		return Eventname;
	}
	public void setEventname(String eventname) {
		Eventname = eventname;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public double getPoints() {
		return Points;
	}
	public void setPoints(double points) {
		Points = points;
	}
	public String getDomain() {
		return Domain;
	}
	public void setDomain(String domain) {
		Domain = domain;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	   
	   
	   
	  
	   
}
