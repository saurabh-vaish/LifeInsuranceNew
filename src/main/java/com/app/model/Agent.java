package com.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="AGENTS")
public class Agent {

	@Id
	@Column(name="AGENTID")
	private Integer agentId;
	@Column(name="AGENTNAME")
	private String agentName;
	@Column(name="AGENTFNAME")
	private String agentfName;
	@Column(name="AGENTAGE")
	private String agentAge;
	@Column(name="AGENTSEX")
	private String agentGen;
	@Column(name="AGENTQUAL")
	private String agentQual;
	@Column(name="AGENTOCCUPATION")
	private String agentOccu;
	@Column(name="AGENTADDRESS")
	private String agentAdd;
	@Column(name="AGENTREGDATE")
	@Temporal(TemporalType.DATE)
	private Date agentReg;
	@Column(name="AGENTSECUTIRYDEPOSIT")
	private String agentSec;
	@Column(name="BRANCHMGRID")
	private String agentBranch;
	@Column(name="TOTALPOLICIES")
	private String agentTotal;
	@Column(name="PHONE")
	private String agentPhone;

	public Agent() {
		super();
	}

	public String getAgentPhone() {
		return agentPhone;
	}

	public void setAgentPhone(String agentPhone) {
		this.agentPhone = agentPhone;
	}

	public Agent(Integer agentId) {
		super();
		this.agentId = agentId;
	}



	public Agent(Integer agentId, String agentName, String agentfName, String agentAge, String agentGen,
			String agentQual, String agentOccu, String agentAdd, Date agentReg, String agentSec, String agentBranch,
			String agentTotal, String agentPhone) {
		super();
		this.agentId = agentId;
		this.agentName = agentName;
		this.agentfName = agentfName;
		this.agentAge = agentAge;
		this.agentGen = agentGen;
		this.agentQual = agentQual;
		this.agentOccu = agentOccu;
		this.agentAdd = agentAdd;
		this.agentReg = agentReg;
		this.agentSec = agentSec;
		this.agentBranch = agentBranch;
		this.agentTotal = agentTotal;
		this.agentPhone = agentPhone;
	}

	public Integer getAgentId() {
		return agentId;
	}

	public void setAgentId(Integer agentId) {
		this.agentId = agentId;
	}

	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}

	public String getAgentfName() {
		return agentfName;
	}

	public void setAgentfName(String agentfName) {
		this.agentfName = agentfName;
	}

	public String getAgentAge() {
		return agentAge;
	}

	public void setAgentAge(String agentAge) {
		this.agentAge = agentAge;
	}

	public String getAgentGen() {
		return agentGen;
	}

	public void setAgentGen(String agentGen) {
		this.agentGen = agentGen;
	}

	public String getAgentQual() {
		return agentQual;
	}

	public void setAgentQual(String agentQual) {
		this.agentQual = agentQual;
	}

	public String getAgentOccu() {
		return agentOccu;
	}

	public void setAgentOccu(String agentOccu) {
		this.agentOccu = agentOccu;
	}

	public String getAgentAdd() {
		return agentAdd;
	}

	public void setAgentAdd(String agentAdd) {
		this.agentAdd = agentAdd;
	}

	public Date getAgentReg() {
		return agentReg;
	}

	public void setAgentReg(Date agentReg) {
		this.agentReg = agentReg;
	}

	public String getAgentSec() {
		return agentSec;
	}

	public void setAgentSec(String agentSec) {
		this.agentSec = agentSec;
	}

	public String getAgentBranch() {
		return agentBranch;
	}

	public void setAgentBranch(String agentBranch) {
		this.agentBranch = agentBranch;
	}

	public String getAgentTotal() {
		return agentTotal;
	}

	public void setAgentTotal(String agentTotal) {
		this.agentTotal = agentTotal;
	}

	@Override
	public String toString() {
		return "Agent [agentId=" + agentId + ", agentName=" + agentName + ", agentfName=" + agentfName + ", agentAge="
				+ agentAge + ", agentGen=" + agentGen + ", agentQual=" + agentQual + ", agentOccu=" + agentOccu
				+ ", agentAdd=" + agentAdd + ", agentReg=" + agentReg + ", agentSec=" + agentSec + ", agentBranch="
				+ agentBranch + ", agentTotal=" + agentTotal + ", agentPhone=" + agentPhone + "]";
	}


}




