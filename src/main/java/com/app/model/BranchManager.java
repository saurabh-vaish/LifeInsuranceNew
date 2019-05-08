package com.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="BRANCHMGR")
public class BranchManager {

	@Id
	@Column(name="BRANCHMGRID")
	private Integer mgrId;
	@Column(name="BRANCHMGRNAME")
	private String mgrName;
	@Column(name="BRANCHMGRFNAME")
	private String mgrFname;
	@Column(name="BRANCHMGRAGE")
	private String mgrAge;
	@Column(name="BRANCHMGRSEX")
	private String mgrGen;
	@Column(name="BRANCHMGRQUAL")
	private String mgrQual;
	@Column(name="BRANCHMGRADDRESS")
	private String mgrAddress;
	@Column(name="BRANCHNAME")
	private String mgrBranchName;
	
	@Temporal(TemporalType.DATE)
	@Column(name="BRANCHMGRJOINDATE")
	private Date mgrJoinDate;
	@Column(name="CONTACT")
	private String mgrPhone;
	
	public BranchManager() {
		super();
	}
	
	public BranchManager(Integer mgrId) {
		super();
		this.mgrId = mgrId;
	}
	
	public BranchManager(Integer mgrId, String mgrName, String mgrFname, String mgrAge, String mgrGen, String mgrQual,
			String mgrAddress, String mgrBranchName, Date mgrJoinDate, String mgrPhone) {
		super();
		this.mgrId = mgrId;
		this.mgrName = mgrName;
		this.mgrFname = mgrFname;
		this.mgrAge = mgrAge;
		this.mgrGen = mgrGen;
		this.mgrQual = mgrQual;
		this.mgrAddress = mgrAddress;
		this.mgrBranchName = mgrBranchName;
		this.mgrJoinDate = mgrJoinDate;
		this.mgrPhone = mgrPhone;
	}
	public Integer getMgrId() {
		return mgrId;
	}
	public void setMgrId(Integer mgrId) {
		this.mgrId = mgrId;
	}
	public String getMgrName() {
		return mgrName;
	}
	public void setMgrName(String mgrName) {
		this.mgrName = mgrName;
	}
	public String getMgrFname() {
		return mgrFname;
	}
	public void setMgrFname(String mgrFname) {
		this.mgrFname = mgrFname;
	}
	public String getMgrAge() {
		return mgrAge;
	}
	public void setMgrAge(String mgrAge) {
		this.mgrAge = mgrAge;
	}
	public String getMgrGen() {
		return mgrGen;
	}
	public void setMgrGen(String mgrGen) {
		this.mgrGen = mgrGen;
	}
	public String getMgrQual() {
		return mgrQual;
	}
	public void setMgrQual(String mgrQual) {
		this.mgrQual = mgrQual;
	}
	public String getMgrAddress() {
		return mgrAddress;
	}
	public void setMgrAddress(String mgrAddress) {
		this.mgrAddress = mgrAddress;
	}
	public String getMgrBranchName() {
		return mgrBranchName;
	}
	public void setMgrBranchName(String mgrBranchName) {
		this.mgrBranchName = mgrBranchName;
	}
	
	
	public Date getMgrJoinDate() {
		return mgrJoinDate;
	}

	public void setMgrJoinDate(Date mgrJoinDate) {
		this.mgrJoinDate = mgrJoinDate;
	}

	public String getMgrPhone() {
		return mgrPhone;
	}
	public void setMgrPhone(String mgrPhone) {
		this.mgrPhone = mgrPhone;
	}
	@Override
	public String toString() {
		return "BranchManager [mgrId=" + mgrId + ", mgrName=" + mgrName + ", mgrFname=" + mgrFname + ", mgrAge="
				+ mgrAge + ", mgrGen=" + mgrGen + ", mgrQual=" + mgrQual + ", mgrAddress=" + mgrAddress
				+ ", mgrBranchName=" + mgrBranchName + ", mgrJoinDate=" + mgrJoinDate + ", mgrPhone=" + mgrPhone + "]";
	}
	
	
	
	
	
}
