package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.ICustomerDao;
import com.app.model.Customer;

@Repository
public class CustomerDaoImpl implements ICustomerDao {

	
	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer saveCustomer(Customer customer) { System.out.println("c:"+customer);
		return (Integer) ht.save(customer);
	}

	@Override
	public void updateCustomer(Customer customer) {
		ht.update(customer);
	}

	@Override
	public void deleteCustomer(Integer id) {
		ht.delete(id);
	}

	@Override
	public Customer getCustomerById(Integer id) {
		return ht.get(Customer.class, id);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return ht.loadAll(Customer.class);
	}

	
	@Override
	public List<Object[]> getCustomerByAgentId(Integer id) {
		
		String i = ""+id;
		String hql = " select custId,custName,custFname,custAge,custSex,custQual, custAddress, custOccup,  custDate from com.app.model.Customer where custAgentId = "+i;
		List<Object[]> list = (List<Object[]>) ht.find(hql);
		return list;
	}
	
}
