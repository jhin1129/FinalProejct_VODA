package com.finalproject.voda.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
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
		PageInfo pageInfo1 = null;
		PageInfo pageInfo2 = null;
		
		likesList = service.getLikesList(loginMember.getM_no());
		
		reviewList = service.getreviewList(loginMember.getM_no());
		
		pageInfo1 = new PageInfo(1, 10, service.getFreeBoardCount(loginMember.getM_no()), 10);
		
		freeBoardList = service.getfreeBoardList(pageInfo1, loginMember.getM_no());
		
		pageInfo2 = new PageInfo(1, 10, service.getQnaBoardCount(loginMember.getM_no()), 10);
		
		qnaBoardList = service.getqnaBoardList(pageInfo2, loginMember.getM_no());
		
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
	public ModelAndView dibsContent(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember,
									@RequestParam(value = "type", defaultValue = "영화") String type) {
		
		List<Contents> likesList = null;
		
		likesList = service.getLikesList(loginMember.getM_no(), type);
		
		model.addObject("likesList", likesList);
		model.addObject("type", type);
		model.setViewName("mypage/mypage_dibsContent");
		
		return model;
	}
	
	@GetMapping("/reviewContent")
	public ModelAndView reviewContent(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember,
									@RequestParam(value = "type", defaultValue = "영화") String type) {
		
		List<Contents> reviewList = null;

		reviewList = service.getReviewList(loginMember.getM_no(), type);
		
		model.addObject("reviewList", reviewList);
		model.addObject("type", type);
		model.setViewName("mypage/mypage_reviewContent");
		
		return model;
	}
	
	@GetMapping("/writeFreeBoard")
	public ModelAndView writeFreeBoard(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember,
									@RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Board> freeBoardList = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getFreeBoardCount(loginMember.getM_no()), 10);
		
		freeBoardList = service.getfreeBoardList(pageInfo, loginMember.getM_no());
		
		model.addObject("pageInfo", pageInfo);
		model.addObject("freeBoardList", freeBoardList);
		model.setViewName("mypage/mypage_writeFreeBoard");
		
		return model;
	}
	
	@GetMapping("/writeQuestionBoard")
	public ModelAndView writeQuestionBoard(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember,
									@RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Board> qnaBoardList = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getQnaBoardCount(loginMember.getM_no()), 10);
		
		qnaBoardList = service.getqnaBoardList(pageInfo, loginMember.getM_no());

		model.addObject("pageInfo", pageInfo);
		model.addObject("qnaBoardList", qnaBoardList);
		model.setViewName("mypage/mypage_writeQuestionBoard");
		
		return model;
	}
}
