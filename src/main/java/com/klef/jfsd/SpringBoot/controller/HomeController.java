package com.klef.jfsd.SpringBoot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@GetMapping("aboutus")
	public ModelAndView aboutus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("aboutus");
		return mv;
	}
}
