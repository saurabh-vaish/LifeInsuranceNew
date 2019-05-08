package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ICustomerPolicyDao;
import com.app.model.CustomerPolicy;
import com.app.service.ICustomerPolicyService;

@Service
public class CustomerPolicyServiceImpl implements ICustomerPolicyService {

	@Autowired
	private ICustomerPolicyDao dao;
	
	@Transactional
	public Integer saveCustomerPolicy(CustomerPolicy customerPolicy) {
		// TODO Auto-generated method stub
		return dao.saveCustomerPolicy(customerPolicy);
	}

	@Transactional
	public void updateCustomerPolicy(CustomerPolicy customerPolicy) {
		// TODO Auto-generated method stub
		dao.updateCustomerPolicy(customerPolicy);
	}

	@Transactional
	public void deleteCustomerPolicy(Integer id) {
		dao.deleteCustomerPolicy(id);
	}

	@Transactional(readOnly=true)
	public CustomerPolicy getCustomerPolicyById(Integer id) {
		return dao.getCustomerPolicyById(id);
	}

	@Transactional(readOnly=true)
	public List<CustomerPolicy> getAllCustomerPolicies() {
		return dao.getAllCustomerPolicies();
	}

	@Transactional(readOnly=true)
	public List<Object> getAgentsById(Integer id){
		return dao.getAgentsById(id);
	}

	@Transactional(readOnly=true)
	public List<Object> getPoliciesById(Integer id){
		return dao.getPoliciesById(id);
	}
	
}
