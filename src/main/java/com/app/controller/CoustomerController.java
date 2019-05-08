package com.app.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Agent;
import com.app.model.Customer;
import com.app.model.CustomerPolicy;
import com.app.model.PolicyRequest;
import com.app.service.IAgentService;
import com.app.service.ICustomerPolicyService;
import com.app.service.ICustomerService;
import com.app.service.IPolicyRequestService;
import com.app.service.IPolicyService;

@Controller
@RequestMapping("/customer")
public class CoustomerController {

	@Autowired
	private ICustomerService service;

	@Autowired
	private IPolicyService pservice;

	@Autowired
	private IPolicyRequestService rservice;

	@Autowired
	private IAgentService aservice;

	@Autowired
	private ICustomerPolicyService cpservice;

	private  Customer customer;
	private int custId;
	

	// for getting customer details for use later
	public void getCustomer(Integer id)
	{
		customer = service.getCustomerById(custId); System.out.println(customer);
	}
	
	// show customer page
	@RequestMapping("/show")
	public String showCustomer(@RequestParam("cid")Integer id,ModelMap map)
	{
		custId = id;
		getCustomer(id);
		customer = service.getCustomerById(id);
		map.addAttribute("customer",customer);
		return "customer";
	}
	
	@RequestMapping("/profile")
	public String showProfile(@RequestParam("cid")Integer id,ModelMap map)
	{
		//map.addAttribute("customer", new Customer()); // form backing object
		
		map.addAttribute("customer",service.getCustomerById(id));
		return "customerProfile";
	}


	// edit customer profile
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String editProfile(@ModelAttribute Customer customer,ModelMap map)
	{
		System.out.println(customer);
		service.updateCustomer(customer);
		map.addAttribute("msg", "profile updated successfully ");
		return "redirect:profile?cid="+customer.getCustId();
	}

	// show policies
	@RequestMapping("/policies")
	public String allPolicies(ModelMap map)
	{
		map.addAttribute("policy", pservice.getAllPolicies());
		return "allPolicies";
	}


	// show policy according to id 
	@RequestMapping("/showPolicy")
	public String showPolicy(@RequestParam("pid")Integer id,ModelMap map)
	{
		map.addAttribute("list", pservice.getAllPolicies());  // send all policies list
		map.addAttribute("policy", pservice.getPolicyById(id));  // policy by id
		return "policy";
	}


	// request policy
	@RequestMapping("/request")
	public String requestPolicy(@ModelAttribute PolicyRequest policyRequest ,@RequestParam("pid")Integer id,ModelMap map)
	{
		
		map.addAttribute("agent",aservice.getAllAgents());
		map.addAttribute("policy",pservice.getPolicyById(id)); // setting policy object to form
		return "requestPolicy";
	}

	//save request policy
	@RequestMapping("/saveRequest")
	public String saveRequestPolicy(@ModelAttribute PolicyRequest policyRequest ,ModelMap map)
	{
		//System.out.println(customer);
		policyRequest.setCustomerId(customer.getCustId().toString());
		policyRequest.setCustomerName(customer.getCustName());
		policyRequest.setAge(customer.getCustAge());
		policyRequest.setAddress(customer.getCustAddress());
		policyRequest.setFlagAgent(1);   // setting value 1 for approval
		policyRequest.setFlagManager(0);   // setting value 0 to prevent null
		System.out.println(policyRequest);
		
		rservice.savePolicyRequest(policyRequest);  // saving policy request
		
		map.addAttribute("flag","applied"); 
		return "redirect:showPolicy?pid="+policyRequest.getPolicyId();
	}


	// show customer policy details 

	@RequestMapping("/myPolicy") public String
	showCustomerPolicy(@RequestParam("cid")Integer id,ModelMap map)
	{
		List<CustomerPolicy>  cp = cpservice.getAllCustomerPolicies(); // get customer policy

		List policy = new ArrayList();
		for(CustomerPolicy p:cp)
		{
			if(Integer.parseInt(p.getCustId())==id)
			{ 
				policy.add(p);
			}
		}

		map.addAttribute("policy",policy);  // get agent 
		return "myPolicies";
	}


	// show customer agent details 
	@RequestMapping("/custAgentDetails")
	public String showCustomerAgent(@RequestParam("cid")Integer id,ModelMap map)
	{

		List<Object>  cp = cpservice.getAgentsById(id);  // get customer policy

		Map<String,Agent> agent = new HashMap<String,Agent>();
		for(Object ob:cp)
		{
			//System.out.println(ob[1].getClass()+" "+ob[1]);
			agent.put(ob.toString(),aservice.getAgentById(Integer.parseInt(ob.toString())));
		}

		map.addAttribute("agent",agent);  // get agent 
		return "customerAgentDetails";
	}
	
	
	// agent details
	@RequestMapping("/agentDetails")
	public String showAgent(@RequestParam("aid")Integer id,ModelMap map)
	{

		map.addAttribute("agent",aservice.getAgentById(id));  // get agent 
		return "agentInfo";
	}
	
	

}
