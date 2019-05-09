package com.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.app.model.Agent;
import com.app.model.Customer;
import com.app.model.CustomerPolicy;
import com.app.model.PolicyRequest;
import com.app.service.IAgentService;
import com.app.service.IBranchManagerService;
import com.app.service.ICustomerPolicyService;
import com.app.service.ICustomerService;
import com.app.service.IPolicyRequestService;
import com.app.service.IPolicyService;

@Controller
@RequestMapping("/agent")
public class AgentController {

	@Autowired
	private IAgentService service;

	@Autowired
	private ICustomerService cservice;

	@Autowired
	private ICustomerPolicyService cpservice;

	@Autowired
	private IBranchManagerService bservice;

	@Autowired
	private IPolicyService pservice;

	@Autowired
	private IPolicyRequestService prservice;

	@RequestMapping("/show")
	public  String showAgent()
	{
		return "Agent";
	}

	@RequestMapping("/profile")
	public String showProfile(@RequestParam("aid")Integer id,ModelMap map)
	{
		map.addAttribute("agent",service.getAgentById(id));
		return "agentProfile";
	}


	// edit profile  not working
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String editProfile(@ModelAttribute Agent agent,ModelMap map)
	{
		System.out.println(agent);
	//service.updateAgent(agent);
	map.addAttribute("msg", "profile updated successfully ");
	return "agentProfile";
	}


	@RequestMapping("custList")
	public String getCustomerList(@RequestParam("aid")Integer aid, ModelMap map)
	{
		System.out.println("data "+ cservice.getCustomerByAgentId(aid));
		map.addAttribute("customer", cservice.getCustomerByAgentId(aid));
		return "customerList";
	}


	@RequestMapping("/custDetails")
	public String getCustomerDetails(@RequestParam("cid")Integer cid, ModelMap map)
	{

		Customer c =cservice.getCustomerById(cid); // get customer 

		List<CustomerPolicy>  cp = cpservice.getAllCustomerPolicies(); // get customer policy

		List policy = new ArrayList();
		for(CustomerPolicy p:cp)
		{
			if(Integer.parseInt(p.getCustId())==cid)
			{ 
				policy.add(p);
			}
		}

		map.addAttribute("policy",policy);  // get customer policies  
		map.addAttribute("customer", c);

		return "customerDetails";
	}



	// edit customer profile
	@RequestMapping(value="/editCust",method=RequestMethod.POST)
	public String editProfile(@ModelAttribute Customer customer,ModelMap map)
	{
		cservice.updateCustomer(customer);
		return "redirect:custDetails";
	}


	@RequestMapping("/managerDetails")
	public String getManagerDetails(@RequestParam("aid")Integer aid, ModelMap map)
	{

		Agent a =service.getAgentById(aid); // get agent 

		map.addAttribute("mgr",bservice.getBranchManagerById(Integer.parseInt(a.getAgentBranch())));  // get branch Manager 

		return "managerDetails";
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
		map.addAttribute("msg", "agent");
		return "policy";
	}
	
	
	// add Customer 
	@RequestMapping("/addCust")
	public String addCustomer(@RequestParam("aid")Integer id,@ModelAttribute Customer customer,  ModelMap map)
	{
		return "addCustomer";
	}
	
		
	// edit customer profile
	@RequestMapping(value="/saveCust",method=RequestMethod.POST)
	public String saveCustomer(@ModelAttribute Customer customer,@RequestParam CommonsMultipartFile customerPic,  ModelMap map)
	{
		if(customer.getCustSex().equalsIgnoreCase("Male"))
		{
			customer.setCustSex("M");
		}
		else if(customer.getCustSex().equalsIgnoreCase("FeMale"))
		{
			customer.setCustSex("F");
		}
		
		
		customer.setCustomerPic(customerPic.getBytes());
		
		
		cservice.saveCustomer(customer);
		return "redirect:custDetails?cid="+customer.getCustId();
	}


	// policy Requests by customer
	@RequestMapping("/policyRequests")
	public String requestPolicyByCustomer(@RequestParam("aid")Integer id,  ModelMap map)
	{
		List<PolicyRequest> list = prservice.getAllPolicyRequests();
		
		
		List request = new ArrayList();
		for(PolicyRequest p:list)
		{
			System.out.println(p.getAgentId()+" "+id);
			if(p.getAgentId().equals(id) && p.getFlagAgent()==0)
			{ 
				request.add(p);
			}
		}
		
		System.out.println(request);
		map.addAttribute("request", request);
		
		return "customerRequets";
	}
	
	
	
	@RequestMapping("/reuqestDetails")
	public String getPolicyRequestsDetails(@RequestParam Integer id, ModelMap map)
	{
		PolicyRequest p =prservice.getPolicyRequestById(id);
		map.addAttribute("policy",p);  // get reuested policy  
		map.addAttribute("customer",cservice.getCustomerById(Integer.parseInt(p.getCustomerId())));  // get reuested policy customer
		return "customerRequestedPolicy";
	}
	
	
	@RequestMapping("/forward")
	public String forwardPolicyRequest(@RequestParam Integer pid, ModelMap map)
	{
		
		return "customerRequestedPolicy";
	}
	
}
