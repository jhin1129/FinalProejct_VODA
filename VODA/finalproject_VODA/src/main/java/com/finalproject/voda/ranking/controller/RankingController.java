package com.finalproject.voda.ranking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.ranking.model.service.RankingService;


@Controller
@RequestMapping("/ranking")
public class RankingController {
	@Autowired
	private RankingService service;
	
	@GetMapping("/ranking")
	public ModelAndView ranking(ModelAndView model) {
		int count = 0;
		
		count = service.getCount();
		
		model.setViewName("ranking/ranking");
		
		return model;
	}
}
