package com.finalproject.voda.contents.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.service.ContentsService;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Likes;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateLikes;
import com.finalproject.voda.contents.model.vo.RateResult;
import com.finalproject.voda.contents.model.vo.SearchPeople;
import com.finalproject.voda.contents.model.vo.SearchResult;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.people.model.vo.People;

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
														@RequestParam String sort,
														@SessionAttribute(value = "loginMember", required = false) Member loginMember) {
		
		if(loginMember != null ) {
			List<RateLikes> rateLikes = null;
			
			Map<String, Object> map	= new HashMap<>();
			
			map.put("m_no", loginMember.getM_no());
			map.put("c_no", no);
		
			System.out.println(map);
				
			rateLikes = service.findRateLikes(map);
			
			System.out.println(rateLikes);
			model.addObject("rateLikes", rateLikes);
		}
		
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
	public ModelAndView commentDetail(ModelAndView model, @RequestParam int no,
									  @SessionAttribute(value = "loginMember", required = false) Member loginMember,
									  HttpServletRequest request, HttpServletResponse response) {
		Contents contents = null;
		RateResult rateResult = null;
		List<ContentsPeople> contentsPeople = null;
		
    	// 조회수 쿠키 관련
    	Cookie[] cookies = request.getCookies();
    	String Contentsviewhistory = "";
    	boolean hasRead = false;
    	
    	if(cookies != null) {
    		String name = null;
    		String value = null;
    		for (Cookie cookie : cookies) {
    			name = cookie.getName();
				value = cookie.getValue();
			
			if(name.equals("viewhistory")) {
				Contentsviewhistory = value;
				
				if(value.contains("|" + no + "|")) {
					hasRead = true;
					
					break;
					}
				}
    		}
    	}

    	if(!hasRead) {    		
    		Cookie cookie = new Cookie("Contentsviewhistory" ,Contentsviewhistory +  "|" +  no + "|");
    		
    		cookie.setMaxAge(-1); 
    		response.addCookie(cookie);
    	}
		
    	
		if(loginMember != null ) {
			Likes likes = new Likes();
			int confirmLike = 0; 
			
			likes.setMNo(loginMember.getM_no());
			likes.setCNo(no); 
		
			System.out.println(likes); 
		
			confirmLike = service.findLikes(likes);
			
			System.out.println(confirmLike); 
			
			model.addObject("likes", likes);
			model.addObject("confirmLike", confirmLike);
		}
		
		contentsPeople = service.getContentsPeopleByNo(no);
		rateResult = service.getContentsRateByNo(no);
		contents = service.findContentsByNo(no, hasRead);
		
		model.addObject("contentsPeople", contentsPeople);
		model.addObject("rateResult", rateResult);
		model.addObject("contents", contents);
		model.setViewName("contents/contents_detail");
		
		return model;
	}
	
	@ResponseBody
	@PostMapping("/contents/contents_detail/likeUp")
	//@RequestMapping(value = "/contents/contents_detail/likeUp", method = { RequestMethod.POST })	
	public void likeUp (@RequestParam("mNo") int mNo, @RequestParam("cNo") int cNo) {
		
		service.likeUp(mNo, cNo);
	}
	
	@ResponseBody
	@PostMapping("/contents/contents_detail/likeDown")
	//@RequestMapping(value = "/contents/contents_detail/likeUp", method = { RequestMethod.POST })	
	public void likeDown (@RequestParam("mNo") int mNo, @RequestParam("cNo") int cNo) {

		
		service.likeDown(mNo, cNo);
	}
	
	@ResponseBody
	@PostMapping("/contents/commentLike")
	public int commentLike (@RequestParam("rate_no") int rate_no, @RequestParam("m_no") int m_no) {

		System.out.println(m_no);
		System.out.println(rate_no);
		System.out.println("컨트롤러 연결 성공");
		
		Map<String, Object> map	= new HashMap<>();
		
		map.put("m_no", m_no);
		map.put("rate_no", rate_no);
		
		int likeCheck = service.likeCheck(map);
		if(likeCheck == 0) {
			// 좋아요 처음 누름
			service.insertLike(map); // RATELIKES 테이블 추가
			service.updateLike(rate_no);	// RATE 테이블 RATE_LIKE +1
			
		} else if(likeCheck == 1) {
			// 좋아요 있음
			service.deleteLike(map); // RATELIKES 테이블 삭제
			service.updateLikeCancel(rate_no); // RATE 테이블 RATE_LIKE -1

		}
		
		return likeCheck;

	}	
	
	@ResponseBody
	@PostMapping("/contents/likeCount")
	public int likeCount (@RequestParam("rate_no") int rate_no) {

	    System.out.println(rate_no);
	    System.out.println("카운트 컨트롤러 연결 성공");
	    
	    int likeCount = 0;
	    
	    likeCount = service.likeCount(rate_no);
	    
	    System.out.println(likeCount);
	    
	    return likeCount;
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
			model.addObject("msg", "코멘트가 정상적으로 등록되었습니다.");
			model.addObject("location", "/contents/contents_detail?no=" + rate.getC_no());
		} else {
			model.addObject("msg", "코멘트 등록을 실패하였습니다.");
			model.addObject("location", "/contents/contents_detail?no=" + rate.getC_no());
		}
		
		model.setViewName("common/msg");
		return model;
	}
	
	@GetMapping("/contents/comment_update")
	public ModelAndView commentUpdate(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page, 
														  @RequestParam int no, 
														  @RequestParam String sort,
														  @RequestParam int rateNo,
												 		  @SessionAttribute("loginMember") Member loginMember) {
					
		List<Rate> rates = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getCommentsCount(no), 12);
		rates = service.getCommentsList(pageInfo, no, sort);
		
		model.addObject("rateNo", rateNo);
		model.addObject("no", no);
		model.addObject("sort", sort);
		model.addObject("rates", rates);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("contents/contents_comments");
		
		return model;
	}
	
	@PostMapping("/contents/comment_update")
	public ModelAndView update(ModelAndView model, @ModelAttribute Rate rate) {
		int result = 0;
		
		result = service.save(rate);
		
		if(result > 0 ) {
			model.addObject("msg", "코멘트가 정상적으로 수정되었습니다.");
			model.addObject("location", "/contents/contents_comments?no=" + rate.getC_no() + "&sort=new");
		} else {
			model.addObject("msg", "코멘트 수정을 실패하였습니다.");
			model.addObject("location", "/contents/contents_comments?no=" + rate.getC_no() + "&sort=new");
		}
		
		model.setViewName("common/msg");		
		return model;	
	}
	
	@GetMapping("/contents/comment_delete")
	public ModelAndView commentDelete(ModelAndView model, @RequestParam int rateNo,
														  @RequestParam int no, 
														  @RequestParam String sort) {
		int result = 0;
		
		result = service.delete(rateNo);
		
		if(result > 0 ) {
			model.addObject("msg", "코멘트가 정상적으로 삭제되었습니다.");
			model.addObject("location", "/contents/contents_comments?no=" + no + "&sort=new");
		} else {
			model.addObject("msg", "코멘트 삭제를 실패하였습니다.");
			model.addObject("location", "/contents/contents_comments?no=" + no + "&sort=new");
		}
		
		model.setViewName("common/msg");		
		return model;	
	}
		
	@GetMapping("/contents/contents_search")
	public ModelAndView contentsSearch(ModelAndView model,
									   @RequestParam String keyword) { 
	
		List<SearchResult> searchResult = null;
		List<SearchPeople> searchPeople = null;
		
		searchPeople = service.getPeopleSearch(keyword);
 		searchResult = service.getContentsSearch(keyword);
		
 		model.addObject("searchPeople",searchPeople);
		model.addObject("searchResult", searchResult);
		model.setViewName("contents/contents_search");
		return model;
	}
	
	@GetMapping("/contents/contents_form")
	public ModelAndView contentsForm(ModelAndView model) { 
		
		model.setViewName("contents/contents_form");
		return model;
	}
	
	@GetMapping("/contents/contents_peoplemodal")
	public ModelAndView contentsPeopleModal(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) { 
		
		List<People> list = null;  
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getPeopleCount(), 16);
		list = service.getPeopleList(pageInfo);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("contents/contents_peoplemodal");
		return model;

	}
	
}
