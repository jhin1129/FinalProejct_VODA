package com.finalproject.voda.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.admin.model.service.AdminService;
import com.finalproject.voda.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

//@SessionAttributes("loginMember")
@Slf4j
@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	@GetMapping("/admin/admin/dashboard")
	public ModelAndView view(ModelAndView model) {
		int count = 0;
		
		count = service.getViewCount();
		System.out.println(count);
		model.setViewName("/admin/admin_dashboard");
		
		return model;
	}
	
}
