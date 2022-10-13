package com.finalproject.voda.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.mypage.model.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService service;
	
	@GetMapping("/main")
	public ModelAndView main(ModelAndView model,
								@SessionAttribute("loginMember") Member loginMember) {
		
		List<Contents> likesList = null;
		List<Contents> reviewList = null;
		List<Board> freeBoardList = null;
		List<Board> qnaBoardList = null;
		
		
		likesList = service.getLikesList(loginMember.getM_no());
		
		System.out.println("likeList : " + likesList);
		
		reviewList = service.getreviewList(loginMember.getM_no());
		
		System.out.println(reviewList);		
		
		freeBoardList = service.getfreeBoardList(loginMember.getM_no());
		
		System.out.println("freeBoard : " + freeBoardList);
		
		qnaBoardList = service.getqnaBoardList(loginMember.getM_no());
		
		System.out.println("qnaBoard : " + qnaBoardList);
		
		model.addObject("likesList", likesList);
		model.addObject("likesListCount", likesList.size());
		model.addObject("reviewList", reviewList);
		model.addObject("reviewListCount", reviewList.size());
		model.addObject("freeBoardList", freeBoardList);
		model.addObject("freeBoardListCount", freeBoardList.size());
		model.addObject("qnaBoardList", qnaBoardList);
		model.addObject("qnaBoardListCount", qnaBoardList.size());
		model.setViewName("mypage/mypage_main");
		
		return model;
	}
	
	@GetMapping("/memberInfo")
	public ModelAndView memberInfo(ModelAndView model) {
		
		model.setViewName("mypage/mypage_viewInfo");
		
		return model;
	}
	
	@GetMapping("/deleteMember")
	public ModelAndView deleteMember(ModelAndView model) {
		
		model.setViewName("mypage/mypage_deleteMember");
		
		return model;
	}
	
	@GetMapping("/dibsContent")
	public ModelAndView dibsContent(ModelAndView model) {
		
		model.setViewName("mypage/mypage_dibsContent");
		
		return model;
	}
	
	@GetMapping("/reviewContent")
	public ModelAndView reviewContent(ModelAndView model) {
		
		model.setViewName("mypage/mypage_reviewContent");
		
		return model;
	}
}
