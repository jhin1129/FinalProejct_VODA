package com.finalproject.voda.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.admin.model.service.AdminService;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.board.model.service.BoardService;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;

// 	자유게시판 리스트
	@GetMapping("/board/free_board_list")
	public ModelAndView view(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Board> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getBoardCount(), 10);
		list = service.getBoardList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo",pageInfo);	
		model.setViewName("board/free_board_list");
		
		return model;
	}
}
