package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "intrest_areas")
public class IntrestAreas {

	@Id
	@Column(name = "intrestarea_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "intrestareas_sequence_id")
	@SequenceGenerator(name = "intrestareas_sequence_id", sequenceName = "intrest_areas_sequence", allocationSize = 1)
	private int intrestAreaId;

	@Column(name = "interest_id")
	private String interestId;

	@Column(name = "email")
	private String userMail;

	public int getIntrestAreaId() {
		return intrestAreaId;
	}

	public void setIntrestAreaId(int intrestAreaId) {
		this.intrestAreaId = intrestAreaId;
	}

	public String getInterestId() {
		return interestId;
	}

	public void setInterestId(String interestId) {
		this.interestId = interestId;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

}
