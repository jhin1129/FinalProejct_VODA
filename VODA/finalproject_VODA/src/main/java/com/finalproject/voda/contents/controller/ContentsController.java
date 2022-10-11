package com.finalproject.voda.contents.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.service.ContentsService;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.RateResult;

@Controller
public class ContentsController {
	@Autowired
	private ContentsService service;
	
	@GetMapping("/contents/contents_movie")
	public ModelAndView movieList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Contents> list = null;  
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getContentsCount("영화"), 15);
		list = service.getContentsList(pageInfo, "영화");
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("contents/contents_movie");
		
		return model;
	}
	
	@GetMapping("/contents/contents_webtoon")
	public ModelAndView webtoonList(ModelAndView model) {
		
		model.setViewName("contents/contents_webtoon");
		
		return model;
	}
	
	@GetMapping("/contents/contents_comments")
	public ModelAndView commentPlus(ModelAndView model) {
		
		model.setViewName("contents/contents_comments");
		
		return model;
	}
	
	@GetMapping("/contents/contents_detail")
	public ModelAndView commentDetail(ModelAndView model, @RequestParam int no) {
		Contents contents = null;
		RateResult rateResult = null;
		List<ContentsPeople> contentsPeople = null;
		
		contentsPeople = service.getContentsPeopleByNo(no);
		rateResult = service.getContentsRateByNo(no);
		contents = service.findContentsByNo(no);
		
		model.addObject("contentsPeople", contentsPeople);
		model.addObject("rateResult", rateResult);
		model.addObject("contents", contents);
		model.setViewName("contents/contents_detail");
		
		return model;
	}
	
	
}
