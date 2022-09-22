package com.finalproject.voda.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.test.model.service.ContentsService;

@Controller
public class TestController {
	@Autowired
	
	ContentsService service;
	
	@GetMapping("/test")
	
	public ModelAndView test(ModelAndView model) {
		int count = 0;
		
		count = service.getCount();
		System.out.println(count);
		model.setViewName("home");
		
		return model;
	}
}
