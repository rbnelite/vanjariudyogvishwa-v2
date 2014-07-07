package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="events")
public class Event {
	@Id
	@Column(name="event_id")
    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="events_sequence_eventid")
	@SequenceGenerator(name="events_sequence_eventid",sequenceName="events_sequence",allocationSize=1)
	private int eventid;
	
	@Column
	@NotEmpty
	private String name;
	
	@Column
	@NotEmpty
	private String details;
	
	@Column
	@NotEmpty
	private String location;
	
	@Column
	@NotEmpty
	private String datatime;
	
	@Column(name="email")
	@Email
	private String usermail;
	
	
	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDatatime() {
		return datatime;
	}
	public void setDatatime(String datatime) {
		this.datatime = datatime;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	
	
}
