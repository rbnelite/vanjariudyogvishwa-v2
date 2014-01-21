/**
 * 
 */
package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * @author PC3
 *
 */
@Entity
@Table(name="otherdetails")
public class OtherDetails {

	@Id
	@Column(name="otherid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="OtherDetails_sequence_sno")
	@SequenceGenerator(name="OtherDetails_sequence_sno",sequenceName="otherdetails_sequence",allocationSize=1)
	private int otherId;
	
	private String socialStatus;
	private String polyticalstatus;
	private String socialact;
	private String polyticalact;
	private String culturalact;
	private String games;
	private String usermail;
	public int getOtherId() {
		return otherId;
	}
	public void setOtherId(int otherId) {
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
	public String getGames() {
		return games;
	}
	public void setGames(String games) {
		this.games = games;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	
}
