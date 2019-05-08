package com.app.service;

import java.util.List;

import com.app.model.Customer;

public interface ICustomerService{

	public Integer saveCustomer(Customer customer);
	public void updateCustomer(Customer customer);
	public void deleteCustomer(Integer id);
	public Customer getCustomerById(Integer id);
	public List<Customer> getAllCustomers();
	
	public List<Object[]> getCustomerByAgentId(Integer id);
	
}
