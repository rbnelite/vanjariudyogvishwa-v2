package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Education")
public class EducationWork {

@Id
@Column(name="education_Id")
@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="education_sequence_educationId")
@SequenceGenerator (name="education_sequence_educationId",sequenceName="education_sequence",allocationSize=1)
private int educationid;



private String school;
private String collage;
private String graduation;
@Column(name="other_graduation")
private String otherGraduation;
@Column(name="pg_college")
private String PGCollege;
@Column(name="pg_degree")
private String PGDegree;
@Column(name="other_pg")
private String otherPG;
@Column(name="email")
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
