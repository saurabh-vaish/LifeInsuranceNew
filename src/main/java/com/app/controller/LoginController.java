package com.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.model.Login;
import com.app.service.ILoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	
	@RequestMapping("/get")
	public String showLogin()
	{
		
		return "login";
	}
	
	@RequestMapping(value="/login")
//	public String getLogin(@ModelAttribute Login login,ModelMap map,HttpServletRequest request)
	public String getLogin()
	{
		
		/*
		 * //System.out.println(login); Login l =service.getUserById(login.getUserId());
		 *///
	/*	System.out.println(l);
		if(l.getType().equals(login.getType()))
		{
			
			request.getSession().setAttribute("userId",l.getUserId().toString()); 
			return "redirect:/"+l.getType().toLowerCase()+"/show";
			
		}
		map.addAttribute("msg", "invalid details found !");
		return "login";
		*/
		
		System.out.println("success");
		return null;
		
	}
	
	
	@RequestMapping("/denied")
	public String deniedPage() {
		return "DeniedPage";
	}
	
}
