package com.finalproject.voda.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.admin.model.service.AdminService;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
//@SessionAttributes("loginMember")
public class AdminController {

	@Autowired
	private AdminService service;
	
//	기본 대시보드 연결
	@GetMapping("/admin_dashboard")
	public ModelAndView view(ModelAndView model) {
		int viewCount = 0;
		
		viewCount = service.getViewCount();
		System.out.println(viewCount);
		model.setViewName("/admin/admin_dashboard");
		
		return model;
	}

//	공지사항 리스트
	@GetMapping("/admin_notice_list") 
	public ModelAndView noticeList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Notice> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getNoticeCount(), 10);
		list = service.getNoticeList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo",pageInfo);	
		model.setViewName("/admin/admin_notice_list");
		
		return model; 
	}

	//	공지사항 조회
	@GetMapping("/admin_notice_detail") 
	public String noticeDetail() {
		
		return "/admin/admin_notice_detail"; 
	}
	
//	공지사항 작성
	@GetMapping("/admin_notice_crud") 
	public ModelAndView noticeList(ModelAndView model) {
		List<Notice> list = null;
		
		model.addObject("list", list);
		model.setViewName("/admin/admin_notice_crud");
		return model; 
	}
	
//	공지사항 수정
	@GetMapping("/admin_notice_update") 
	public String noticeUpdate() {
		
		return "/admin/admin_notice_update"; 
	}
	
	
//	통계 리스트 (기본 조회수)
	@GetMapping("/admin_total_views") 
	public String total() {
		
		return "/admin/admin_total_views"; 
		
	}
}
