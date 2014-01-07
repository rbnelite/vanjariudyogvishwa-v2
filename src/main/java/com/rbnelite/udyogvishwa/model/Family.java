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
@Table(name="family")
public class Family {
	
	@Id
	@Column(name="familyid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="family_sequence_sno")
	@SequenceGenerator(name="family_sequence_sno",sequenceName="family_sequence",allocationSize=1)
	private int familyId;
	
	private String familyValue;
	private String familyType;
	private String familyStatus;
	private String familyIncome;
	private String userMail;
	
	public int getFamilyId() {
		return familyId;
	}
	public void setFamilyId(int familyId) {
		this.familyId = familyId;
	}
	public String getFamilyValue() {
		return familyValue;
	}
	public void setFamilyValue(String familyValue) {
		this.familyValue = familyValue;
	}
	public String getFamilyType() {
		return familyType;
	}
	public void setFamilyType(String familyType) {
		this.familyType = familyType;
	}
	public String getFamilyStatus() {
		return familyStatus;
	}
	public void setFamilyStatus(String familyStatus) {
		this.familyStatus = familyStatus;
	}
	public String getFamilyIncome() {
		return familyIncome;
	}
	public void setFamilyIncome(String familyIncome) {
		this.familyIncome = familyIncome;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	
	
	

}
