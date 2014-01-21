package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="events")
public class Event {
	@Id
	@Column(name="event_id")
    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="events_sequence_eventid")
	@SequenceGenerator(name="events_sequence_eventid",sequenceName="events_sequence",allocationSize=1)
	private int eventid;
	
	@Column
	private String name;
	
	@Column
	private String details;
	
	@Column
	private String location;
	
	@Column
	private String datatime;
	
	@Column(name="email")
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
