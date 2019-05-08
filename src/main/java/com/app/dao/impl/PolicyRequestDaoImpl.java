package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.IPolicyRequestDao;
import com.app.model.Policy;
import com.app.model.PolicyRequest;

@Repository
public class PolicyRequestDaoImpl implements IPolicyRequestDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer savePolicyRequest(PolicyRequest policyRequest) {
		// TODO Auto-generated method stub
		return (Integer) ht.save(policyRequest);
	}

	@Override
	public void updatePolicyRequest(PolicyRequest policyRequest) {
		// TODO Auto-generated method stub
		ht.update(policyRequest);
	}

	@Override
	public void deletePolicyRequest(Integer id) {
		// TODO Auto-generated method stub
		ht.delete(new PolicyRequest(id));
	}

	@Override
	public PolicyRequest getPolicyRequestById(Integer id) {
		// TODO Auto-generated method stub
		return ht.get(PolicyRequest.class, id);
	}

	@Override
	public List<PolicyRequest> getAllPolicyRequests() {
		// TODO Auto-generated method stub
		return ht.loadAll(PolicyRequest.class);
	}

}
