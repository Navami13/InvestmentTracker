package com.prototype.file.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;

import com.prototype.file.Service.*;
import com.prototype.file.Repository.UserRepository;
import com.prototype.file.entity.*;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.*;

@Controller
public class InitialController {
	
	@Autowired
	InvestmentServiceImpl service;
	@Autowired
	UserRepository repo;
	
	@RequestMapping(path = "/Home",method = RequestMethod.GET)
	public void displayinit()
	{
		
	}	
	@RequestMapping("/Home")
	public void displayinit1()
	{
		
	}	
	@RequestMapping("/savedata")
	public void displayShares(@ModelAttribute("inv") InvestmentDetails inv, HttpServletRequest re,Model m)
	{
	      service.saveshare(inv);
	}	
	
	@RequestMapping("/login")  
	public String loginhandle(@ModelAttribute("user") User user, HttpServletRequest re,Model m) throws NullException
	{
		String tname=re.getParameter("email");
		String e=service.findEmail(tname);
		m.addAttribute("display",e);
			return "ManageInvestment";
	}
	@RequestMapping("/signup") 
	public String dispManageShares(@ModelAttribute("user") User user, HttpServletRequest re,Model m) throws NullException
	{
	      service.save(user);
	      System.out.println(user.getEmail());
	      String sname=user.getFirstName();
	      System.out.println(sname);
	      m.addAttribute("name", user.getEmail());
	      return "display";
	}

}
