package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CUSTPOLICYAMOUNTS")
public class CustomerPolicyAmounts {

	@Id
	@Column(name="CUSTPOLICYID")
	private Integer custPolicyId;
	@Column(name="AMOUNT")
	private String amount;
	@Column(name="INTERESTAMOUNT")
	private String interestAmount;
	@Column(name="NETAMOUNT")
	private String netAmount;
	
	public CustomerPolicyAmounts() {
		super();
	}

	public CustomerPolicyAmounts(Integer custPolicyId) {
		super();
		this.custPolicyId = custPolicyId;
	}

	public CustomerPolicyAmounts(Integer custPolicyId, String amount, String interestAmount, String netAmount) {
		super();
		this.custPolicyId = custPolicyId;
		this.amount = amount;
		this.interestAmount = interestAmount;
		this.netAmount = netAmount;
	}

	public Integer getCustPolicyId() {
		return custPolicyId;
	}

	public void setCustPolicyId(Integer custPolicyId) {
		this.custPolicyId = custPolicyId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getInterestAmount() {
		return interestAmount;
	}

	public void setInterestAmount(String interestAmount) {
		this.interestAmount = interestAmount;
	}

	public String getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(String netAmount) {
		this.netAmount = netAmount;
	}

	@Override
	public String toString() {
		return "CustomerPolicyAmounts [custPolicyId=" + custPolicyId + ", amount=" + amount + ", interestAmount="
				+ interestAmount + ", netAmount=" + netAmount + "]";
	}


	
	

}
