package com.klef.jfsd.SpringBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.SpringBoot.model.Admin;
import com.klef.jfsd.SpringBoot.model.Donor;
import com.klef.jfsd.SpringBoot.model.Recipient;
import com.klef.jfsd.SpringBoot.service.AdminService;
import com.klef.jfsd.SpringBoot.service.RecipientService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		long count = adminService.donorcount();
		mv.addObject("count", count);
		return mv;
	}

	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");

		Admin admin = adminService.checkAdminLogin(auname, apwd);
		if(admin != null)
		{
			mv.setViewName("adminhome");
			long count = adminService.donorcount();
			mv.addObject("count", count);
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("msg", "Login Failed");
		}
		return mv;
	}

	@GetMapping("viewalldonors")
	public ModelAndView viewalldonors() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewalldonors");
		long count = adminService.donorcount();
		mv.addObject("count", count);
		List<Donor> donors = adminService.viewAllDonors();
		mv.addObject("donorlist", donors);
		return mv;
	}
	@GetMapping("viewallrecipients")
	public ModelAndView viewallrecipients() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallrecipients");
		long count = adminService.recipientcount();
		mv.addObject("count", count);
		List<Recipient> recipients = adminService.viewAllRecipients();
		mv.addObject("recipientlist", recipients);
		return mv;
	}
    @GetMapping("/deleteRecipient/{id}")
    public ModelAndView deleteRecipient(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView();
        adminService.deleteRecipient(id); // Calling the service to delete the donor
        mv.setViewName("redirect:/viewallrecipients"); // Redirect after deletion
        return mv;
    }


	// Delete Donor
    @GetMapping("/deleteDonor/{id}")
    public ModelAndView deleteDonor(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView();
        adminService.deleteDonor(id); // Calling the service to delete the donor
        mv.setViewName("redirect:/viewalldonors"); // Redirect after deletion
        return mv;
    }
}
