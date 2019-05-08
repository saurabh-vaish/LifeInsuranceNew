package com.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="BRANCH")
public class Branch {

	@Id
	@Column(name="BRANCHID")
	private String branchId;
	@Column(name="BRANCHNAME")
	private String branchName;
	@Column(name="LOCATION")
	private String branchLocation;
	
	@Temporal(TemporalType.DATE)
	@Column(name="BRANCHDATE")
	private Date branchDate;
	
	@Column(name="PHONE")
	private String branchPhone;
	@Column(name="STATE")
	private String branchState;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="mid",unique=true)
	private BranchManager manager = new BranchManager();
	
	public Branch() {
		super();
	}
	

	public Branch(String branchId) {
		super();
		this.branchId = branchId;
	}


	

	public Branch(String branchId, String branchName, String branchLocation, Date branchDate, String branchPhone,
			String branchState, BranchManager manager) {
		super();
		this.branchId = branchId;
		this.branchName = branchName;
		this.branchLocation = branchLocation;
		this.branchDate = branchDate;
		this.branchPhone = branchPhone;
		this.branchState = branchState;
		this.manager = manager;
	}


	public String getBranchId() {
		return branchId;
	}


	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}


	public String getBranchName() {
		return branchName;
	}


	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}


	public String getBranchLocation() {
		return branchLocation;
	}


	public void setBranchLocation(String branchLocation) {
		this.branchLocation = branchLocation;
	}


	public Date getBranchDate() {
		return branchDate;
	}


	public void setBranchDate(Date branchDate) {
		this.branchDate = branchDate;
	}


	public String getBranchPhone() {
		return branchPhone;
	}


	public void setBranchPhone(String branchPhone) {
		this.branchPhone = branchPhone;
	}


	public String getBranchState() {
		return branchState;
	}


	public void setBranchState(String branchState) {
		this.branchState = branchState;
	}

	
	public BranchManager getManager() {
		return manager;
	}


	public void setManager(BranchManager manager) {
		this.manager = manager;
	}


	@Override
	public String toString() {
		return "Branch [branchId=" + branchId + ", branchName=" + branchName + ", branchLocation=" + branchLocation
				+ ", branchDate=" + branchDate + ", branchPhone=" + branchPhone + ", branchState=" + branchState
				+ ", manager=" + manager + "]";
	}


	

	
}
