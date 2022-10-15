package com.finalproject.voda.contents.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.service.ContentsService;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateResult;
import com.finalproject.voda.contents.model.vo.SearchResult;
import com.finalproject.voda.member.model.vo.Member;

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
	public ModelAndView movieList(ModelAndView model) {
		
		model.setViewName("contents/contents_webtoon");
		
		return model;
	}
	
	@GetMapping("/contents/contents_comments")
	public ModelAndView commentList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page, 
														@RequestParam int no, 
														@RequestParam String sort) {
					
		List<Rate> rates = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getCommentsCount(no), 12);
		rates = service.getCommentsList(pageInfo, no, sort);
		
		model.addObject("no", no);
		model.addObject("sort", sort);
		model.addObject("rates", rates);
		model.addObject("pageInfo", pageInfo);
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
	
	@PostMapping("/contents/comment_write")
	public ModelAndView commentWrite(ModelAndView model, 
									 @RequestParam int no,
									 @ModelAttribute Rate rate, 
									 @SessionAttribute("loginMember") Member loginMember) {
		int result = 0;
		
		rate.setM_no(loginMember.getM_no());
		rate.setC_no(no);
		
		result = service.save(rate);
		
		if(result > 0) {
			model.addObject("msg", "게시글이 정상적으로 등록되었습니다.");
			model.addObject("location", "/contents/contents_detail?no=" + rate.getC_no());
		} else {
			model.addObject("msg", "게시글 등록을 실패하였습니다.");
			model.addObject("location", "/contents/contents_detail?no=" + rate.getC_no());
		}
		
		model.setViewName("common/msg");
		return model;
	}
	
	@GetMapping("/contents/contents_search")
	public ModelAndView contentsSearch(ModelAndView model,
									   @RequestParam String keyword) { 
	
		List<SearchResult> searchResult = null;
		
		searchResult = service.getContentsSearch(keyword);
		
		model.addObject("searchResult", searchResult);
		model.setViewName("contents/contents_search");
		return model;
	}
	
}
