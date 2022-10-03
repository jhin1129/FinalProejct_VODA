package com.finalproject.voda.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.member.model.service.MemberService;
import com.finalproject.voda.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller 
@RequestMapping("/member")
public class MemberController {
	@Autowired 
	private MemberService service;
	


	@GetMapping("/enroll") 
	public String enroll() {
		
		return "member/enroll"; 
		
	}
	
	@GetMapping("/enrollComplete") 
	public String enrollComplete() {
		
		return "member/enrollComplete"; 
		
	}
	

	@PostMapping("/enroll") 
	public ModelAndView enroll(ModelAndView model,
								@ModelAttribute Member memeber)
								{
		
		int result = 0;
		
		result = service.save(memeber);
		
		if(result > 0) {
			model.addObject("msg", "회원 가입이 완료되었습니다.");
			model.addObject("location", "/member/enrollComplete");
		} else {
			model.addObject("msg", "회원가입을 실패하였습니다. 가입 페이지로 돌아갑니다.");
			model.addObject("location", "/member/enroll");
		}
		
		System.out.println(memeber);

		model.setViewName("common/msg");
		
		return model;
	}
	
	
	@PostMapping("/idCheck")
	public ResponseEntity<Map<String, Boolean>> idCheck(@RequestParam String userId) {
		log.info("{}", userId);
		
		Map<String, Boolean> map = new HashMap<>();
		
		map.put("duplicate", service.isDuplicateID(userId));
		
		return new ResponseEntity<Map<String, Boolean>>(map, HttpStatus.OK);
	}
	
	
	@GetMapping("/login") 
	public String login() {
		
		return "member/login"; 		
	}
	
	
	@PostMapping("/login") 
	public ModelAndView login(ModelAndView model,
			@RequestParam("m_id") String id, @RequestParam("m_password") String password) {	
	
		log.info("{}, {}", id, password);
		
		Member loginMember = service.login(id, password);
		
		if(loginMember != null) {
			model.addObject("loginMember", loginMember);
			model.setViewName("redirect:/");
		} else {
			model.addObject("msg", "아이디나 비밀번호가 일치하지 않습니다.");
			model.addObject("location", "/member/login");
			model.setViewName("common/msg");			
			}		
		
		return model;
	}	
	
	@GetMapping("/findId") 
	public String findId() {
		
		
		
		return "member/findId"; 
		
	}
	
	@GetMapping("/idVerify") 
	public String idVerify() {
		
		return "member/idVerify"; 
		
	}
	
	@GetMapping("/findPwd") 
	public String findPwd() {
		
		return "member/findPwd"; 
		
	}
	
	@GetMapping("/findPwdSendEmail") 
	public String findPwdSendEmail() {
		
		return "member/findPwdSendEmail"; 
		
	}
	
	@GetMapping("/pwdReset") 
	public String pwdReset() {
		
		return "member/pwdReset"; 
		
	}
	
	@GetMapping("/people") 
	public String people() {
		
		return "people/people"; 
		
	}
	
	
	@GetMapping("/teatApi") 
	public String teatApi() {
		
		return "member/teatApi"; 
		
	}
//	@GetMapping("/people/peopleEnroll") 
//	public String peopleEnroll() {
//		
//		return "people/peopleEnroll"; 
//		
//	}
//	
//	@GetMapping("/people/peopleOnclickButton") 
//	public String peopleOnclickButton() {
//		
//		return "people/peopleOnclickButton"; 
//		
//	}
}
