package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="POLICYREQUEST")
public class PolicyRequest {

	@Id
	@GeneratedValue
	private Integer id;
	@Column(name="POLICYID")
	private Integer policyId;
	@Column(name="POLICYNAME")
	private String policyName;
	@Column(name="CUSTOMERID")
	private String customerId;
	@Column(name="CUSTOMERNAME")
	private String customerName;
	@Column(name="AGENTID")
	private Integer agentId;
	
	@Column(name="AGE")
	private String age;
	@Column(name="AMOUNT")
	private String amount;
	@Column(name="EMAIL")
	private String email;
	@Column(name="PHONE")
	private String phone;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="TERM")
	private String policyTerm;
	@Column(name="POLICYDATE")
	private String policyDate;
	
	@Column(name="AFLAG")
	private Integer flagAgent;
	
	@Column(name="MFLAG")
	private Integer flagManager;
	
	public PolicyRequest() {
		super();
	}

	
	public PolicyRequest(Integer id) {
		super();
		this.id =id;
	}
	

	

	public PolicyRequest(Integer id, Integer policyId, String policyName, String customerId, String customerName,
			Integer agentId, String age, String amount, String email, String phone, String address, String policyTerm,
			String policyDate, Integer flagAgent, Integer flagManager) {
		super();
		this.id = id;
		this.policyId = policyId;
		this.policyName = policyName;
		this.customerId = customerId;
		this.customerName = customerName;
		this.agentId = agentId;
		this.age = age;
		this.amount = amount;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.policyTerm = policyTerm;
		this.policyDate = policyDate;
		this.flagAgent = flagAgent;
		this.flagManager = flagManager;
	}


	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
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



	public String getCustomerId() {
		return customerId;
	}



	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}



	public String getCustomerName() {
		return customerName;
	}



	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}





	public Integer getAgentId() {
		return agentId;
	}


	public void setAgentId(Integer agentId) {
		this.agentId = agentId;
	}


	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	public String getAmount() {
		return amount;
	}



	public void setAmount(String amount) {
		this.amount = amount;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPolicyTerm() {
		return policyTerm;
	}



	public void setPolicyTerm(String policyTerm) {
		this.policyTerm = policyTerm;
	}



	public String getPolicyDate() {
		return policyDate;
	}



	public void setPolicyDate(String policyDate) {
		this.policyDate = policyDate;
	}


	public Integer getFlagAgent() {
		return flagAgent;
	}


	public void setFlagAgent(Integer flagAgent) {
		this.flagAgent = flagAgent;
	}


	public Integer getFlagManager() {
		return flagManager;
	}


	public void setFlagManager(Integer flagManager) {
		this.flagManager = flagManager;
	}


	@Override
	public String toString() {
		return "PolicyRequest [id=" + id + ", policyId=" + policyId + ", policyName=" + policyName + ", customerId="
				+ customerId + ", customerName=" + customerName + ", agentId=" + agentId + ", age=" + age + ", amount="
				+ amount + ", email=" + email + ", phone=" + phone + ", address=" + address + ", policyTerm="
				+ policyTerm + ", policyDate=" + policyDate + ", flagAgent=" + flagAgent + ", flagManager="
				+ flagManager + "]";
	}


	

	
	
}
