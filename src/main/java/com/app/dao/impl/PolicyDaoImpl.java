package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.IPolicyDao;
import com.app.model.Policy;

@Repository
public class PolicyDaoImpl implements IPolicyDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	public Integer savePolicy(Policy policy) {
		return (Integer)ht.save(policy);
	}

	
	public void updatePolicy(Policy policy) {
		ht.update(policy);
	}

	
	public void deletePolicy(Integer id) {
		ht.delete(new Policy(id));
	}

	
	public Policy getPolicyById(Integer id) {
		return ht.get(Policy.class, id);
	}

	
	public List<Policy> getAllPolicies() {
		//System.out.println(ht.loadAll(Policy.class));
		return ht.loadAll(Policy.class);
	}


	

	
}
