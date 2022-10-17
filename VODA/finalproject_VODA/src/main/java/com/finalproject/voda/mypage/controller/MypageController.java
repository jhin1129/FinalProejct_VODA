package com.finalproject.voda.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
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
	
	@GetMapping("/updateMember")
	public ModelAndView updateMember(ModelAndView model) {
		
		model.setViewName("mypage/mypage_pwdCheck");
		
		return model;
	}
	
	@PostMapping("/pwdCheck")
	public ModelAndView pwdCheck(ModelAndView model,
								@SessionAttribute("loginMember") Member loginMember,
								@RequestParam(value = "userpwd") String pwd) {
		
		
		if(passwordEncoder.matches(pwd, loginMember.getM_password())) {
			model.setViewName("mypage/mypage_updateInfo");
		} else {
			model.addObject("msg", "비밀번호가 일치하지 않습니다.");
			model.addObject("location", "/mypage/updateMember");
			model.setViewName("common/msg");	
		}
		
		return model;
	}
	
	@PostMapping("/updateMember")
	public ModelAndView updateMember(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember,
									@ModelAttribute Member member) {
		int result = 0;
		
		member.setM_no(loginMember.getM_no());
		
		System.out.println(member);
		
		result = service.updateMember(member);
		
		if(result > 0) {
			loginMember.setM_name(member.getM_name());
			loginMember.setM_email(member.getM_email());
			loginMember.setM_phone(member.getM_phone());
			loginMember.setM_address(member.getM_address());
			loginMember.setM_birth(member.getM_birth());
			loginMember.setM_gender(member.getM_gender());
			loginMember.setM_postNum(member.getM_postNum());
			loginMember.setM_detailAddress(member.getM_detailAddress());
			model.addObject("msg", "정보 수정이 완료되었습니다.");
		} else {
			model.addObject("msg", "정보 수정이 실패하였습니다.");
		}
		
		
		model.addObject("location", "/mypage/memberInfo");

		model.setViewName("common/msg");	
		
		return model;
	}
	
	@GetMapping("/deleteMember")
	public ModelAndView deleteMember(ModelAndView model) {
		
		model.setViewName("mypage/mypage_deleteMember");
		
		return model;
	}
	
	@PostMapping("/deleteMember")
	public ModelAndView deleteMember(ModelAndView model,
									@SessionAttribute("loginMember") Member loginMember) {
		
		int result = 0;
				
		result = service.deleteMember(loginMember.getM_no());
		
		if(result > 0) {
			model.addObject("msg", "정상적으로 탈퇴되었습니다.");
			model.addObject("location", "/member/logout");
		} else {
			model.addObject("msg", "회원 탈퇴를 실패하였습니다.");
			model.addObject("location", "/mypage/main");
		}
		
		model.setViewName("common/msg");
		
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
	
	@GetMapping("/payList")
	public ModelAndView payList(ModelAndView model) {
		
		model.setViewName("mypage/mypage_pay_list");
		
		return model;
	}
	
	@GetMapping("/payCancelList")
	public ModelAndView payCancelList(ModelAndView model) {
		
		model.setViewName("mypage/mypage_pay_cancelList");
		
		return model;
	}
}
