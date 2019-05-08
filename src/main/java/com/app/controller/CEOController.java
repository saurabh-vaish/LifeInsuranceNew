package com.app.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.SessionScope;

import com.app.model.Branch;
import com.app.model.BranchManager;
import com.app.service.IBranchManagerService;
import com.app.service.IBranchService;

@Controller
@RequestMapping("/ceo")
@SessionScope
public class CEOController {

	@Autowired
	private IBranchService service;

	@Autowired
	private IBranchManagerService bservice;
	
	@RequestMapping("/show")
	public String showHome()
	{
		return "CeoHome";
	}
	
	/*  Branch */
	
	// show Branch Registration page
	@RequestMapping("/regBranch")
	public String showRegForm(ModelMap map)
	{
		map.addAttribute("branch", new Branch());
		map.addAttribute("listmgr", bservice.getAllBranchManageres());
		return "branchRegistration";
	}
	
	
	// save branch 
	@RequestMapping(value="/branchReg",method=RequestMethod.POST) 
	public String branchReg(@ModelAttribute Branch branch,ModelMap map) 
	{
		System.out.println(branch);
		String id = service.saveBranch(branch);
		map.addAttribute("msg", "branch registered successfully"+id);
		return "branchRegistration";
	}


	// all branches
	@RequestMapping("/allBranch")
	public String allBranches(ModelMap map)
	{
		map.addAttribute("branch", service.getAllBranches());
		return "branches";
	}
	
	// view branch
	@RequestMapping("/branchDetails")
	public String viewBranch(@RequestParam("bid")String id,ModelMap map)
	{
		Branch b = service.getBranchById(id);
		System.out.println(b);
		map.addAttribute("branch",b);
		map.addAttribute("listmgr", bservice.getAllBranchManageres());
		return "branchView";
	}
	
	
	// delete branch
	@RequestMapping("/branchDel")
	public String branchDel(@RequestParam("bid")String id,ModelMap map)
	{
		service.deleteBranch(id);
		map.addAttribute("msg", "branch Deleted successfully");
		return "redirect:/ceo/allBranch";
	}	
		
	
	// update branch 
	@RequestMapping(value="/branchUpdate",method=RequestMethod.POST) 
	public String branchUpdate(@ModelAttribute Branch branch,ModelMap map) 
	{
		System.out.println(branch);
		service.updateBranch(branch);
		map.addAttribute("msg", "branch updated successfully");
		return "redirect:/ceo/branchDetails?bid="+branch.getBranchId();
	}



	// Branch End

	/***  manager start ****/
	
	// show Branch Registration page
	@RequestMapping("/regManager")
	public String showRegManager(ModelMap map)
	{
		map.addAttribute("manager", new BranchManager());
		map.addAttribute("listbranch", service.getBranchName());
		return "managerRegistration";
	}
		
	// save manager
	@RequestMapping(value="/save",method=RequestMethod.POST) 
	public String managerReg(@ModelAttribute BranchManager manager,ModelMap map) 
	{
		System.out.println(manager);
		Integer id = bservice.saveBranchManager(manager);
		map.addAttribute("msg", "Manager registered successfully");
		return "redirect:/ceo/managerRegistration";
	}
	
	// all managers
	@RequestMapping("/allManager")
	public String allManagers(ModelMap map)
	{
		map.addAttribute("manager", bservice.getAllBranchManageres());
		return "managersAll";
	}
		
		// view branch
		@RequestMapping("/managerDetails")
		public String viewManager(@RequestParam("mid")Integer id,ModelMap map)
		{
			BranchManager bm = bservice.getBranchManagerById(id);
			System.out.println(bm);
			map.addAttribute("manager",bm);
			
			Branch b = bservice.getBranchByManagerId(id);
			map.addAttribute("branch",b);
		//	System.out.println("controller"+bservice.getBranchByManagerId(id));
			
			return "managerView";
		}
		
		
		// delete branch
		@RequestMapping("/managerDel")
		public String deleteManager(@RequestParam("bid")String id,ModelMap map)
		{
			service.deleteBranch(id);
			map.addAttribute("msg", "branch Deleted successfully");
			return "redirect:/ceo/allBranch";
		}	
			
		
		// update branch 
		@RequestMapping(value="/managerUpdate",method=RequestMethod.POST) 
		public String updateManager(@ModelAttribute Branch branch,ModelMap map) 
		{
			System.out.println(branch);
			service.updateBranch(branch);
			map.addAttribute("msg", "branch updated successfully");
			return "redirect:/ceo/branchDetails?bid="+branch.getBranchId();
		}

	
	
}
