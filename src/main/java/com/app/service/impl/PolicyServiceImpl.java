package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IPolicyDao;
import com.app.model.Policy;
import com.app.service.IPolicyService;

@Service
public class PolicyServiceImpl  implements IPolicyService{

	@Autowired
	private IPolicyDao dao;
	
	@Transactional
	public Integer savePolicy(Policy policy) {
		// TODO Auto-generated method stub
		return dao.savePolicy(policy);
	}

	@Transactional
	public void updatePolicy(Policy policy) {
		// TODO Auto-generated method stub
		dao.updatePolicy(policy);
	}

	@Transactional
	public void deletePolicy(Integer id) {
		dao.deletePolicy(id);
	}

	@Transactional(readOnly=true)
	public Policy getPolicyById(Integer id) {
		return dao.getPolicyById(id);
	}

	@Transactional(readOnly=true)
	public List<Policy> getAllPolicies() {
		return dao.getAllPolicies();
	}

	

	
	
}
