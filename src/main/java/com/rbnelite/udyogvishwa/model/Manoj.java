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
@Table(name="manoj")
public class Manoj {
	
	@Id
	@Column(name="sno")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="manoj_sequence_sno")
	@SequenceGenerator(name="manoj_sequence_sno",sequenceName="manoj_sequence",allocationSize=1)
	private int sno;
	
	@Column(name="fname")
	private String fName;
	
	@Column(name="lname")
	private String lName;
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}

}
