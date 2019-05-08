package com.app.service;

import java.util.List;

import com.app.model.CustomerPolicy;

public interface ICustomerPolicyService {

	public Integer saveCustomerPolicy(CustomerPolicy customerPolicy);
	public void updateCustomerPolicy(CustomerPolicy customerPolicy);
	public void deleteCustomerPolicy(Integer id);
	public CustomerPolicy getCustomerPolicyById(Integer id);
	public List<CustomerPolicy> getAllCustomerPolicies();
	public List<Object> getAgentsById(Integer id);
	public List<Object> getPoliciesById(Integer id);
}
