package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "other_details")
public class OtherDetails {

	@Id
	@Column(name = "other_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OtherDetails_sequence_sno")
	@SequenceGenerator(name = "OtherDetails_sequence_sno", sequenceName = "other_details_sequence", allocationSize = 1)
	private long otherId;

	@Column(name = "social_status")
	@NotEmpty
	private String socialStatus;

	@Column(name = "polytical_status")
	private String polyticalstatus;

	@Column(name = "social_act")
	private String socialact;

	@Column(name = "polytical_act")
	private String polyticalact;

	@Column(name = "cultural_act")
	private String culturalact;

	@Column(name = "email")
	private String usermail;

	
	public long getOtherId() {
		return otherId;
	}

	public void setOtherId(long otherId) {
		this.otherId = otherId;
	}

	public String getSocialStatus() {
		return socialStatus;
	}

	public void setSocialStatus(String socialStatus) {
		this.socialStatus = socialStatus;
	}

	public String getPolyticalstatus() {
		return polyticalstatus;
	}

	public void setPolyticalstatus(String polyticalstatus) {
		this.polyticalstatus = polyticalstatus;
	}

	public String getSocialact() {
		return socialact;
	}

	public void setSocialact(String socialact) {
		this.socialact = socialact;
	}

	public String getPolyticalact() {
		return polyticalact;
	}

	public void setPolyticalact(String polyticalact) {
		this.polyticalact = polyticalact;
	}

	public String getCulturalact() {
		return culturalact;
	}

	public void setCulturalact(String culturalact) {
		this.culturalact = culturalact;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

}