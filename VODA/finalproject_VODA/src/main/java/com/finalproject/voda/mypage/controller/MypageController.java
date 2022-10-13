package com.finalproject.voda.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.mypage.model.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService service;
	
	@GetMapping("/main")
	public ModelAndView main(ModelAndView model) {
		
		List<Contents> likesList = null;
		List<Board> freeBoardList = null;
		List<Board> qnaBoardList = null;
		
		likesList = service.getLikesList(2);
		
		freeBoardList = service.getfreeBoardList(2);
		
		System.out.println(freeBoardList);
		
		qnaBoardList = service.getqnaBoardList(2);
		
		System.out.println(qnaBoardList);
		
		model.addObject("likesList", likesList);
		model.addObject("freeBoardList", freeBoardList);
		model.setViewName("mypage/mypage_main");
		
		return model;
	}
}
