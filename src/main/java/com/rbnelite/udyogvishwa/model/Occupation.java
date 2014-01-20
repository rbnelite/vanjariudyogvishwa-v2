package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="occupation")

public class Occupation {
	@Id
	@Column(name="occupationid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="occupation_sequence_occupationid")
    @SequenceGenerator(name="occupation_sequence_occupationid",sequenceName="occupation_sequence",allocationSize=1)
	private int occupationid;
	
	private String companyname;
    private String occupation;
    private String productdetails;
    private String numberofemp;
    private String emptype;
    private String annualincome;
    private String usermail;
	public int getOccupationid() {
		return occupationid;
	}
	public void setOccupationid(int occupationid) {
		this.occupationid = occupationid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getProductdetails() {
		return productdetails;
	}
	public void setProductdetails(String productdetails) {
		this.productdetails = productdetails;
	}
	public String getNumberofemp() {
		return numberofemp;
	}
	public void setNumberofemp(String numberofemp) {
		this.numberofemp = numberofemp;
	}
	public String getEmptype() {
		return emptype;
	}
	public void setEmptype(String emptype) {
		this.emptype = emptype;
	}
	public String getAnnualincome() {
		return annualincome;
	}
	public void setAnnualincome(String annualincome) {
		this.annualincome = annualincome;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

    
    
    
	
	


}
