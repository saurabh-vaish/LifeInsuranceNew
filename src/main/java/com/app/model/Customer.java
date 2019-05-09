package com.app.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER")
public class Customer {

	@Id
	@Column(name="CUSTID")
	private Integer custId;
	@Column(name="CUSTNAME")
	private String custName;
	@Column(name="CUSTFNAME")
	private String custFname;
	@Column(name="CUSTAGE")
	private String custAge;
	@Column(name="CUSTSEX")
	private String custSex;
	@Column(name="CUSTQUAL")
	private String custQual;
	@Column(name="CUSTADDRESS")
	private String custAddress;
	@Column(name="CUSTOCCUPATION")
	private String custOccup;
	@Column(name="CUSTREGDATE")
	private String custDate;
	@Column(name="AGENTID")
	private String custAgentId;
	
	@Column(name="CONTACT")
	private String custPhone;
	
	@Column(name="photo")
	@Lob
	private byte[] customerPic;
	
	
	public Customer() {
		super();
	}

	public Customer(Integer custId) {
		super();
		this.custId = custId;
	}

	
	

	public Customer(Integer custId, String custName, String custFname, String custAge, String custSex, String custQual,
			String custAddress, String custOccup, String custDate, String custAgentId, String custPhone,
			byte[] customerPic) {
		super();
		this.custId = custId;
		this.custName = custName;
		this.custFname = custFname;
		this.custAge = custAge;
		this.custSex = custSex;
		this.custQual = custQual;
		this.custAddress = custAddress;
		this.custOccup = custOccup;
		this.custDate = custDate;
		this.custAgentId = custAgentId;
		this.custPhone = custPhone;
		this.customerPic = customerPic;
	}

	public Integer getCustId() {
		return custId;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustFname() {
		return custFname;
	}

	public void setCustFname(String custFname) {
		this.custFname = custFname;
	}

	public String getCustAge() {
		return custAge;
	}

	public void setCustAge(String custAge) {
		this.custAge = custAge;
	}

	public String getCustSex() {
		return custSex;
	}

	public void setCustSex(String custSex) {
		this.custSex = custSex;
	}

	public String getCustQual() {
		return custQual;
	}

	public void setCustQual(String custQual) {
		this.custQual = custQual;
	}

	public String getCustAddress() {
		return custAddress;
	}

	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}

	public String getCustOccup() {
		return custOccup;
	}

	public void setCustOccup(String custOccup) {
		this.custOccup = custOccup;
	}

	public String getCustDate() {
		return custDate;
	}

	public void setCustDate(String custDate) {
		this.custDate = custDate;
	}

	
	public String getCustAgentId() {
		return custAgentId;
	}

	public void setCustAgentId(String custAgentId) {
		this.custAgentId = custAgentId;
	}

	public String getCustPhone() {
		return custPhone;
	}

	public void setCustPhone(String custPhone) {
		this.custPhone = custPhone;
	}

	public byte[] getCustomerPic() {
		return customerPic;
	}

	public void setCustomerPic(byte[] customerPic) {
		this.customerPic = customerPic;
	}

	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", custName=" + custName + ", custFname=" + custFname + ", custAge="
				+ custAge + ", custSex=" + custSex + ", custQual=" + custQual + ", custAddress=" + custAddress
				+ ", custOccup=" + custOccup + ", custDate=" + custDate + ", custAgentId=" + custAgentId
				+ ", custPhone=" + custPhone + ", customerPic=" + Arrays.toString(customerPic) + "]";
	}

	
	
}
