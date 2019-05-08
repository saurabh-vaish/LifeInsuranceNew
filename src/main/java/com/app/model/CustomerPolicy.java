package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CUSTMERPOLICIES")
public class CustomerPolicy {

	@Id
	@GeneratedValue
	@Column(name="CUSTPOLICYID")
	private Integer custPolyId;
	@Column(name="CUSTID")
	private String custId;
	@Column(name="POLICYID")
	private String policyId;
	@Column(name="POLICYNAME")
	private String policyName;
	@Column(name="POLICYHOLDERNAME")
	private String policyHolderName;
	@Column(name="POLICYDATE")
	private String premiumDate;
	@Column(name="PREMIUMTYPE")
	private String premiumType;
	@Column(name="PREMIUMAMOUNT")
	private String premiumAmount;
	@Column(name="NOMINEENAME")
	private String nomineeName;
	@Column(name="RELATION")
	private String relation;
	@Column(name="AGENTID")
	private String agentId;
	
	public CustomerPolicy() {
		super();
	}

	
	
	public CustomerPolicy(Integer custPolyId) {
		super();
		this.custPolyId = custPolyId;
	}



	public CustomerPolicy(Integer custPolyId, String custId, String policyId, String policyName,
			String policyHolderName, String premiumDate, String premiumType, String premiumAmount, String nomineeName,
			String relation, String agentId) {
		super();
		this.custPolyId = custPolyId;
		this.custId = custId;
		this.policyId = policyId;
		this.policyName = policyName;
		this.policyHolderName = policyHolderName;
		this.premiumDate = premiumDate;
		this.premiumType = premiumType;
		this.premiumAmount = premiumAmount;
		this.nomineeName = nomineeName;
		this.relation = relation;
		this.agentId = agentId;
	}



	public Integer getCustPolyId() {
		return custPolyId;
	}

	public void setCustPolyId(Integer custPolyId) {
		this.custPolyId = custPolyId;
	}

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	
	
	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public String getPremiumDate() {
		return premiumDate;
	}

	public void setPremiumDate(String premiumDate) {
		this.premiumDate = premiumDate;
	}

	public String getPremiumType() {
		return premiumType;
	}

	public void setPremiumType(String premiumType) {
		this.premiumType = premiumType;
	}

	public String getPremiumAmount() {
		return premiumAmount;
	}

	public void setPremiumAmount(String premiumAmount) {
		this.premiumAmount = premiumAmount;
	}

	public String getNomineeName() {
		return nomineeName;
	}

	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getAgentId() {
		return agentId;
	}

	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}



	public String getPolicyHolderName() {
		return policyHolderName;
	}



	public void setPolicyHolderName(String policyHolderName) {
		this.policyHolderName = policyHolderName;
	}



	@Override
	public String toString() {
		return "CustomerPolicy [custPolyId=" + custPolyId + ", custId=" + custId + ", policyId=" + policyId
				+ ", policyName=" + policyName + ", policyHolderName=" + policyHolderName + ", premiumDate="
				+ premiumDate + ", premiumType=" + premiumType + ", premiumAmount=" + premiumAmount + ", nomineeName="
				+ nomineeName + ", relation=" + relation + ", agentId=" + agentId + "]";
	}

	
	
	
	
}
