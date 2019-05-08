package com.app.dao;

import java.util.List;

import com.app.model.Policy;

public interface IPolicyDao {

	public Integer savePolicy(Policy policy);
	public void updatePolicy(Policy policy);
	public void deletePolicy(Integer id);
	public Policy getPolicyById(Integer id);
	public List<Policy> getAllPolicies();
	
}
