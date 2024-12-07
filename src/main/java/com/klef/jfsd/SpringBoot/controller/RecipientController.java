package com.klef.jfsd.SpringBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.SpringBoot.model.Recipient;
import com.klef.jfsd.SpringBoot.service.RecipientService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class RecipientController {

    @Autowired
    private RecipientService recipientService;

    @GetMapping("recipientreg")
    public ModelAndView recipientreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipientreg");
        return mv;
    }

    @GetMapping("recipienthome")
    public ModelAndView recipienthome(HttpSession session) {
        if (session.getAttribute("recipient") == null) {
            return redirectToLogin(); // Redirect to login if session is not active
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipienthome");
        return mv;
    }

    @GetMapping("viewrequests")
    public ModelAndView viewrequests(HttpSession session) {
        if (session.getAttribute("recipient") == null) {
            return redirectToLogin();
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewrequests");
        return mv;
    }

    @GetMapping("recipientprofile")
    public ModelAndView recipientprofile(HttpSession session) {
        if (session.getAttribute("recipient") == null) {
            return redirectToLogin();
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipientprofile");
        return mv;
    }

    @GetMapping("addrecipient")
    public ModelAndView addrecipient(HttpSession session) {
       
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addrecipient");
        return mv;
    }

    @PostMapping("insertrecipient")
    public ModelAndView insertdonor(HttpServletRequest request) {
        // Retrieve parameters from the request
        String name = request.getParameter("rname");
        String gender = request.getParameter("rgender");
        String dob = request.getParameter("rdob");
        String email = request.getParameter("remail");
        String location = request.getParameter("rlocation");
        String contact = request.getParameter("rcontact");
        String password = request.getParameter("rpwd");
        String rsupportreason = request.getParameter("rsupportreason");

        // Validate inputs
        if (name == null || email == null || name.isEmpty() || email.isEmpty()) {
            ModelAndView mv = new ModelAndView();
            mv.setViewName("error");
            mv.addObject("errorMessage", "Name and Email are required.");
            return mv;
        }

        // Create the recipient object
        Recipient recipient = new Recipient();
        recipient.setName(name);
        recipient.setGender(gender);
        recipient.setDateofbirth(dob);
        recipient.setEmail(email);
        recipient.setLocation(location);
        recipient.setContact(contact);
        recipient.setPassword(password);
        recipient.setSupportReason(rsupportreason);

        // Register the recipient
        String message = recipientService.RecipientRegistration(recipient);

        // Response page
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipientregsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkrecipientlogin")
    public ModelAndView checkrecipientlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String remail = request.getParameter("remail");
        String rpwd = request.getParameter("rpwd");

        Recipient recipient = recipientService.checkRecipientLogin(remail, rpwd);
        if (recipient != null) {
            HttpSession session = request.getSession();
            session.setAttribute("recipient", recipient);
            mv.setViewName("recipienthome");
        } else {
            mv.setViewName("recipientlogin");
            mv.addObject("msg", "Login Failed");
        }
        return mv;
    }

    @GetMapping("recipientlogin")
    public ModelAndView recipientlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipientlogin");
        return mv;
    }

    @GetMapping("updaterecipientprofile")
    public ModelAndView updaterecipientprofile(HttpSession session) {
        if (session.getAttribute("recipient") == null) {
            return redirectToLogin();
        }
        ModelAndView mv = new ModelAndView("updaterecipientprofile");
        return mv;
    }

    @PostMapping("update2")
    public ModelAndView update2(HttpServletRequest request, HttpSession session) {
        if (session.getAttribute("recipient") == null) {
            return redirectToLogin();
        }

        int id = Integer.parseInt(request.getParameter("rid"));
        String name = request.getParameter("rname");
        String gender = request.getParameter("rgender");
        String dob = request.getParameter("rdob");
        String email = request.getParameter("remail");
        String location = request.getParameter("rlocation");
        String contact = request.getParameter("rcontact");
        String password = request.getParameter("rpwd");

        Recipient recipient = new Recipient();
        recipient.setId(id);
        recipient.setName(name);
        recipient.setGender(gender);
        recipient.setDateofbirth(dob);
        recipient.setEmail(email);
        recipient.setLocation(location);
        recipient.setContact(contact);
        recipient.setPassword(password);
        recipientService.updateRecipient(recipient);

        ModelAndView mv = new ModelAndView("recipientlogin");
        return mv;
    }

    // Utility method for redirecting to login page
    private ModelAndView redirectToLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("recipientlogin");
        mv.addObject("msg", "Please log in to continue.");
        return mv;
    }
}
