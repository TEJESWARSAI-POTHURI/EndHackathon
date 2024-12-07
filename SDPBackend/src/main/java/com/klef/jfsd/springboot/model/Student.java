package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Student_data")
public class Student {
	@Id
	@Column(name = "student_id", nullable = false, length = 20)
	private int sid;
	@Column(name = "Student_name", length = 100,nullable = false)
	private String sname;
	public int getSid() {
		return sid;
	}
	public void setSid(String id) {
		this.sid = Integer.parseInt(id);
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}

}
