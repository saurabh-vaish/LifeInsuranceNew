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

import com.app.model.Agent;
import com.app.model.BranchManager;
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
@RequestMapping("/manager")
public class ManagerController {

		@Autowired
		private IBranchManagerService bservice;
	
		@Autowired
		private IAgentService aservice;

		@Autowired
		private ICustomerService cservice;

		@Autowired
		private ICustomerPolicyService cpservice;

		@Autowired
		private IPolicyService pservice;

		@Autowired
		private IPolicyRequestService prservice;
		
		private Integer managerId;

		@RequestMapping("/show")
		public  String showManager()
		{
			return "Manager";
		}

		@RequestMapping("/profile")
		public String showProfile(@RequestParam("mid")Integer id,ModelMap map)
		{
			managerId=id;   // stores managerId for use 
			map.addAttribute("manager",bservice.getBranchManagerById(id));
			return "managerProfile";
		}


		// edit profile
		@RequestMapping(value="/update", method=RequestMethod.POST)
		public String editProfile(@ModelAttribute BranchManager manager,ModelMap map)
		{
			System.out.println(manager);
			bservice.updateBranchManager(manager);
			map.addAttribute("msg", "profile updated successfully ");
			return "managerProfile";
		}


		@RequestMapping("agentList")
		public String getCustomerList(@RequestParam(value="mid",required=false,defaultValue="0")Integer mid, ModelMap map)
		{
			//System.out.println("data "+ cservice.getCustomerByAgentId(aid));
			if(mid==0) {
				mid=managerId;
			}
			map.addAttribute("agent", aservice.getAgentByManagerId(mid));
			return "agentList";
		}


		@RequestMapping("/agentDetails")
		public String getCustomerDetails(@RequestParam Integer aid, ModelMap map)
		{

			Agent agent = aservice.getAgentById(aid); // get customer 

		/*
		 * List<CustomerPolicy> cp = cpservice.getAllCustomerPolicies(); // get customer
		 * policy
		 * 
		 * List policy = new ArrayList(); for(CustomerPolicy p:cp) {
		 * if(Integer.parseInt(p.getCustId())==cid) { policy.add(p); } }
		 * 
		 * map.addAttribute("policy",policy); // get customer policies
		 */			
			map.addAttribute("agent", agent);

			return "agentDetails";
		}


		
		// delete agent profile
		@RequestMapping(value="/deleteAgent")
		public String deleteAgent(@RequestParam Integer aid,ModelMap map)
		{
			aservice.deleteAgent(aid);
			map.addAttribute("msg", "agent deleted successfully");
			return "redirect:agentList";
		}

		// start from here

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

			Agent a =aservice.getAgentById(aid); // get agent 

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
		public String saveCustomer(@ModelAttribute Customer customer,ModelMap map)
		{
			if(customer.getCustSex().equalsIgnoreCase("Male"))
			{
				customer.setCustSex("M");
			}
			else if(customer.getCustSex().equalsIgnoreCase("FeMale"))
			{
				customer.setCustSex("F");
			}
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
