package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="employment")
public class Occupation {
	@Id
	@Column(name="employee_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="employment_sequence_employee_id")
    @SequenceGenerator(name="employment_sequence_employee_id",sequenceName="employment_sequence",allocationSize=1)
	private int occupationid;
	
	@Column(name="company_name")
	private String companyName;
    
	@Column
    private String occupation;
    
    @Column(name="product_details")
    private String productdetails;
    
    @Column(name="number_of_emp")
    private String numberofemp;
    
    @Column(name="emp_type")
    private String emptype;
   
    @Column(name="annual_income")
    private String annualincome;
    
    @Column(name="email")
    private String usermail;
    
    @Column(name="web_address")
    private String webAddress;
	
    
    public int getOccupationid() {
		return occupationid;
	}
    
	public void setOccupationid(int occupationid) {
		this.occupationid = occupationid;
	}
	
	public String getOccupation() {
		return occupation;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	public String getCompanyName() {
		return companyName;
	}
	
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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

	public String getWebAddress() {
		return webAddress;
	}

	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}

}
