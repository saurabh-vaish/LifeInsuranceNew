package com.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="POLICIES")
public class Policy {

	@Id
	@Column(name="POLICYID")
	private Integer policyId;
	
	@Column(name="POLICYNAME")
	private String policyName;
	
	@Column(name="POLICYTERM")
	private String policyTerm;
	
	@Column(name="POLICYAMOUNT")
	private String policyAmt;

	@Column(name="POLICYFACEAMOUNT")
	private String policyFcAmt;

	@Column(name="POLICYINTEREST")
	private String policyInterest;

	@Column(name="POLICYDATE")
	@Temporal(TemporalType.DATE)
	private Date policyDate;

	@Column(name="POLICYMAX")
	private String policyMax;

	public Policy() {
		super();
	}

	public Policy(Integer policyId, String policyName, String policyTerm, String policyAmt, String policyFcAmt,
			String policyInterest, Date policyDate, String policyMax) {
		super();
		this.policyId = policyId;
		this.policyName = policyName;
		this.policyTerm = policyTerm;
		this.policyAmt = policyAmt;
		this.policyFcAmt = policyFcAmt;
		this.policyInterest = policyInterest;
		this.policyDate = policyDate;
		this.policyMax = policyMax;
	}

	public Policy(Integer policyId) {
		super();
		this.policyId = policyId;
	}

	public Integer getPolicyId() {
		return policyId;
	}

	public void setPolicyId(Integer policyId) {
		this.policyId = policyId;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public String getPolicyTerm() {
		return policyTerm;
	}

	public void setPolicyTerm(String policyTerm) {
		this.policyTerm = policyTerm;
	}

	public String getPolicyAmt() {
		return policyAmt;
	}

	public void setPolicyAmt(String policyAmt) {
		this.policyAmt = policyAmt;
	}

	public String getPolicyFcAmt() {
		return policyFcAmt;
	}

	public void setPolicyFcAmt(String policyFcAmt) {
		this.policyFcAmt = policyFcAmt;
	}

	public String getPolicyInterest() {
		return policyInterest;
	}

	public void setPolicyInterest(String policyInterest) {
		this.policyInterest = policyInterest;
	}

	

	public Date getPolicyDate() {
		return policyDate;
	}

	public void setPolicyDate(Date policyDate) {
		this.policyDate = policyDate;
	}

	public String getPolicyMax() {
		return policyMax;
	}

	public void setPolicyMax(String policyMax) {
		this.policyMax = policyMax;
	}

	@Override
	public String toString() {
		return "Policy [policyId=" + policyId + ", policyName=" + policyName + ", policyTerm=" + policyTerm
				+ ", policyAmt=" + policyAmt + ", policyFcAmt=" + policyFcAmt + ", policyInterest=" + policyInterest
				+ ", policyDate=" + policyDate + ", policyMax=" + policyMax + "]";
	}
	
	
}
