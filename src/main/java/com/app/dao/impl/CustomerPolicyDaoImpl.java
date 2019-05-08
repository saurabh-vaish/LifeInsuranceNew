package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.ICustomerPolicyDao;
import com.app.model.CustomerPolicy;


@Repository
public class CustomerPolicyDaoImpl implements ICustomerPolicyDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	public Integer saveCustomerPolicy(CustomerPolicy customerPolicy) {
		return (Integer)ht.save(customerPolicy);
	}

	public void updateCustomerPolicy(CustomerPolicy customerPolicy) {
		ht.update(customerPolicy);
	}

	public void deleteCustomerPolicy(Integer id) {
		ht.delete(new CustomerPolicy(id));
	}

	public CustomerPolicy getCustomerPolicyById(Integer id) {
		
		return ht.get(CustomerPolicy.class, id);
	}

	public List<CustomerPolicy> getAllCustomerPolicies() {
		//System.out.println(ht.loadAll(CustomerPolicy.class));
		return ht.loadAll(CustomerPolicy.class);
	}

	public List<Object> getAgentsById(Integer id)
	{
		String i=""+id;System.out.println(id);
		return (List<Object>) ht.find(" select agentId from "+CustomerPolicy.class.getName()+" where custId= "+i);
	}

	@Override
	public List<Object> getPoliciesById(Integer id) {
		String i=""+id;
		return (List<Object>) ht.find(" select custPolyId from "+CustomerPolicy.class.getName()+" where custId= "+i);
	}
	
}

