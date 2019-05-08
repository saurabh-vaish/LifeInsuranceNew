package com.app.dao;

import java.util.List;

import com.app.model.Customer;

public interface ICustomerDao {

	public Integer saveCustomer(Customer customer);
	public void updateCustomer(Customer customer);
	public void deleteCustomer(Integer id);
	public Customer getCustomerById(Integer id);
	public List<Customer> getAllCustomers();
	
	public List<Object[]> getCustomerByAgentId(Integer id);
	
}
