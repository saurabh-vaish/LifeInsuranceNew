package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IPolicyRequestDao;
import com.app.model.Policy;
import com.app.model.PolicyRequest;
import com.app.service.IPolicyRequestService;

@Service
public class PolicyRequestServiceImpl implements IPolicyRequestService {

	@Autowired
	private IPolicyRequestDao dao;
	
	@Transactional
	public Integer savePolicyRequest(PolicyRequest policyRequest) {
		
		return dao.savePolicyRequest(policyRequest);
	}

	@Transactional
	public void updatePolicyRequest(PolicyRequest policyRequest) {
		dao.updatePolicyRequest(policyRequest);
	}

	@Transactional
	public void deletePolicyRequest(Integer id) {
		dao.deletePolicyRequest(id);
	}

	@Transactional(readOnly=true)
	public PolicyRequest getPolicyRequestById(Integer id) {
		return dao.getPolicyRequestById(id);
	}

	@Transactional(readOnly=true)
	public List<PolicyRequest> getAllPolicyRequests() {
		return dao.getAllPolicyRequests();
	}

}
