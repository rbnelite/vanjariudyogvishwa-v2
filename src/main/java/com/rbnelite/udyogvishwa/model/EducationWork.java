package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="EducationWork")
public class EducationWork {

@Id
@Column(name="educationId")
@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="educationwork_sequence_educationId")
@SequenceGenerator (name="educationwork_sequence_educationId",sequenceName="educationwork_sequence",allocationSize=1)
private int educationid;



private String school;
private String collage;
private String graduation;
private String otherGraduation;
private String PGCollege;
private String PGDegree;
private String otherPG;
private String userMail;

public int getEducationid() {
	return educationid;
}
public void setEducationid(int educationid) {
	this.educationid = educationid;
}
public String getSchool() {
	return school;
}
public void setSchool(String school) {
	this.school = school;
}
public String getCollage() {
	return collage;
}
public void setCollage(String collage) {
	this.collage = collage;
}
public String getGraduation() {
	return graduation;
}
public void setGraduation(String graduation) {
	this.graduation = graduation;
}
public String getOtherGraduation() {
	return otherGraduation;
}
public void setOtherGraduation(String otherGraduation) {
	this.otherGraduation = otherGraduation;
}
public String getPGCollege() {
	return PGCollege;
}
public void setPGCollege(String pGCollege) {
	PGCollege = pGCollege;
}
public String getPGDegree() {
	return PGDegree;
}
public void setPGDegree(String pGDegree) {
	PGDegree = pGDegree;
}
public String getOtherPG() {
	return otherPG;
}
public void setOtherPG(String otherPG) {
	this.otherPG = otherPG;
}
public String getUserMail() {
	return userMail;
}
public void setUserMail(String userMail) {
	this.userMail = userMail;
}





}
