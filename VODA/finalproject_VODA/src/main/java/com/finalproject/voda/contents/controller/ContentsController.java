package com.finalproject.voda.contents.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentsController {
	
	@GetMapping("/contents/contents_movie")
	public ModelAndView movieList(ModelAndView model) {
		
		model.setViewName("contents/contents_movie");
		
		return model;
	}
	
	@GetMapping("/contents/contents_webtoon")
	public ModelAndView webtoonList(ModelAndView model) {
		
		model.setViewName("contents/contents_webtoon");
		
		return model;
	}
	
}
