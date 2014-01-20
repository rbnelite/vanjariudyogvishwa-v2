package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="ineed")
public class Need {
	@Id
	@Column(name="need_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="ineed_sequence_id")
	@SequenceGenerator(name="ineed_sequence_id",sequenceName="ineed_sequence",allocationSize=1)
    private int needId;
	
	@Column
	private String need;
	
	@Column
	private String description;
	
	@Column
	private String mobile;
	
	
	public int getNeedId() {
		return needId;
	}
	public void setNeedId(int needId) {
		this.needId = needId;
	}
	public String getNeed() {
		return need;
	}
	public void setNeed(String need) {
		this.need = need;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	

}