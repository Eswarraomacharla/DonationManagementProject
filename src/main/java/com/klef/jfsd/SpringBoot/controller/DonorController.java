package com.klef.jfsd.SpringBoot.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.SpringBoot.model.Donation;
import com.klef.jfsd.SpringBoot.model.Donor;
import com.klef.jfsd.SpringBoot.service.DonationService;
import com.klef.jfsd.SpringBoot.service.DonorService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class DonorController 
{
	@Autowired
	private DonorService donorService;
	@Autowired
	private DonationService donationService;
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("donorlogin")
	public ModelAndView donorlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("donorlogin");
		return mv;
	}
	@GetMapping("donorreg")
	public ModelAndView donorreg()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("donorreg");
		return mv;
	}
	@GetMapping("donationform")
	public ModelAndView donationform()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("donationform");
		return mv;
	}
	@GetMapping("donationhistory")
	public ModelAndView donationhistory()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("donationhistory");
		return mv;
	}
	@GetMapping("donorprofile")
	public ModelAndView donorprofile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("donorprofile");
		return mv;
	}
	@GetMapping("donorhome")
	public ModelAndView donorhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("donorhome");
		return mv;
	}
	@GetMapping("adddonor")
	public ModelAndView adddonor()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adddonor");
		return mv;
	}
	@PostMapping("insertdonor")
	public ModelAndView insertdonor(HttpServletRequest request) {
	    // Retrieve parameters from the request
	    String name = request.getParameter("cname");
	    String gender = request.getParameter("cgender");
	    String dob = request.getParameter("cdob");
	    String email = request.getParameter("cemail");
	    String location = request.getParameter("clocation");
	    String contact = request.getParameter("ccontact");
	    String password = request.getParameter("cpwd");

	    // Check if the necessary fields are not null or empty
	    if (name == null || email == null || name.isEmpty() || email.isEmpty()) {
	        // Handle error: Name or email is missing
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("error"); // A page to display errors (create an "error" view)
	        mv.addObject("errorMessage", "Name and Email are required.");
	        return mv;
	    }

	    // Create the donor object
	    Donor donor = new Donor();
	    donor.setName(name);
	    donor.setGender(gender);
	    donor.setDateofbirth(dob);
	    donor.setEmail(email);
	    donor.setLocation(location);
	    donor.setContact(contact);
	    donor.setPassword(password);

	    // Register the donor
	    String message = donorService.DonorRegistration(donor);

	 

	    // Create ModelAndView for the response page
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("regsuccess"); // View name for registration success page
	    mv.addObject("message", message); // Add success message for view rendering
	    return mv;
	}

	@PostMapping("processdonation")
	public String processDonation(@ModelAttribute Donation donation, Model model) {
	    // Validate donation input
	    if (donation.getItemType() == null || donation.getItemType().isEmpty() ||
	        donation.getQuantity() <= 0 || donation.getDonationCondition() == null || donation.getDonationCondition().isEmpty()) {
	        return "donationform";  // If validation fails, return to the donation form
	    }

	    try {
	        // Save the donation details
	        donationService.saveDonation(donation);
	        return "donationconfirmation";  // If success, go to donation confirmation page
	    } catch (Exception e) {
	        return "donationform";  // If there's an error, return to the donation form
	    }
	}
	


	@PostMapping("checkdonorlogin")
	public ModelAndView checkDonorLogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String cemail = request.getParameter("cemail");
	    String cpwd = request.getParameter("cpwd");

	    // Validate input fields
	    if (cemail == null || cemail.isEmpty()) {
	        mv.setViewName("donorlogin");
	        mv.addObject("emailError", "Email is compulsory.");
	        return mv;
	    }
	    if (cpwd == null || cpwd.isEmpty()) {
	        mv.setViewName("donorlogin");
	        mv.addObject("passwordError", "Password is compulsory.");
	        return mv;
	    }

	    // Check credentials
	    Donor donor = donorService.checkDonorLogin(cemail, cpwd);
	    if (donor != null) {
	        // Login successful
	        HttpSession session = request.getSession();
	        session.setAttribute("donor", donor);
	        mv.setViewName("donorhome");
	    } else {
	        // Login failed
	        mv.setViewName("donorlogin");
	        mv.addObject("loginError", "Login Failed. Invalid email or password.");
	    }

	    return mv;
	}



	@GetMapping("updateprofile")
	public ModelAndView updateprofile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updateprofile");
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView("updateprofile");
		int id=Integer.parseInt(request.getParameter("cid"));
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Donor donor=new Donor();
		donor.setId(id);
		donor.setName(name);
		donor.setGender(gender);
		donor.setDateofbirth(dob);
		donor.setEmail(email);
		donor.setLocation(location);
		donor.setContact(contact);
		donor.setPassword(password);
		donorService.updateDonor(donor);
		mv.setViewName("donorlogin");
		return mv;
	}
	@GetMapping("donorforgotpassword")
    public ModelAndView forgotPassword() {
        return new ModelAndView("donorforgotpassword");
    }

    @PostMapping("donorverifydetails")
    public ModelAndView verifyDetails(@RequestParam("cemail") String cemail,@RequestParam("ccontact") String ccontact,
                                       HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Donor donor = donorService.getDonorByEmailAndContact(cemail, ccontact);

        if (donor != null) {
            // Store verified email in session for resetpassword.jsp
            session.setAttribute("verifiedEmail", cemail);
            mv.setViewName("donorresetpassword");
        } else {
            mv.setViewName("donorforgotpassword");
            mv.addObject("errorMessage", "Invalid email or contact!");
        }

        return mv;
    }

    @PostMapping("donorresetpassword")
    public ModelAndView resetPassword(@RequestParam("newPassword") String newPassword,
                                       @RequestParam("confirmPassword") String confirmPassword,
                                       HttpSession session) {
        ModelAndView mv = new ModelAndView();
        String email = (String) session.getAttribute("verifiedEmail");

        if (email == null) {
            mv.setViewName("forgotpassword");
            mv.addObject("errorMessage", "Session expired. Please try again.");
            return mv;
        }

        if (!newPassword.equals(confirmPassword)) {
            mv.setViewName("resetpassword");
            mv.addObject("errorMessage", "Passwords do not match!");
            return mv;
        }

        // Update password
        Donor donor = donorService.getDonorByEmail(email);
        donor.setPassword(newPassword);
        donorService.updateDonorPassword(donor);

        mv.setViewName("donorlogin");
        mv.addObject("successMessage", "Password reset successfully! Please log in.");
        session.removeAttribute("verifiedEmail"); // Clear session attribute
        return mv;
    }
	
	
}
