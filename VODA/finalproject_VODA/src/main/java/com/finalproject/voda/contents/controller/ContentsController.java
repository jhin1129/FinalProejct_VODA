package com.finalproject.voda.contents.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.common.util.MultipartFileUtil;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.common.util.Search;
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

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ContentsController {
	@Autowired
	private ContentsService service;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@GetMapping("/contents/contents")
	public ModelAndView movieList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page,
													  @RequestParam(value= "sort", defaultValue="new") String sort,
													  @RequestParam String type) {
		
		List<Contents> list = null;  
		PageInfo pageInfo = null;
		
		if(type.equals("movie")) {
			pageInfo = new PageInfo(page, 10, service.getContentsCount("??????"), 15);
			list = service.getContentsList(pageInfo, "??????", sort); 
		} else if(type.equals("tv")) {
			pageInfo = new PageInfo(page, 10, service.getContentsCount("TV"), 15);
			list = service.getContentsList(pageInfo, "TV", sort); 	
		} else if(type.equals("book")) {
			pageInfo = new PageInfo(page, 10, service.getContentsCount("??????"), 15);
			list = service.getContentsList(pageInfo, "??????", sort); 		
		} else {
			pageInfo = new PageInfo(page, 10, service.getContentsCount("??????"), 15);
			list = service.getContentsList(pageInfo, "??????", sort); 
		}
		
		model.addObject("sort", sort);
		model.addObject("type", type);
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("contents/contents_movie");
		
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

		Contents contents = null;
		
		contents = service.getBg(no);
		
		List<Rate> rates = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getCommentsCount(no), 12);
		if(sort.equals("me")) {
			
		Map<String, Object> mymap = new HashMap<>();
		
		mymap.put("pageInfo", pageInfo);
		mymap.put("m_no", loginMember.getM_no());
		mymap.put("c_no", no);
		mymap.put("sort", sort);
			
		rates = service.orderByMyRate(mymap);	
		} else {
		rates = service.getCommentsList(pageInfo, no, sort); }
		
		model.addObject("contents", contents);
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
		
    	// ????????? ?????? ??????
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
			int confirmRate = 0; 
			
			likes.setMNo(loginMember.getM_no());
			likes.setCNo(no); 
		
			System.out.println(likes); 
		
			confirmLike = service.findLikes(likes);
			
			System.out.println(confirmLike); 
			
			Map<String, Object> map	= new HashMap<>();
			
			map.put("m_no", loginMember.getM_no());
			map.put("no", no);
			
			confirmRate = service.findRate(map);
			
			System.out.println("????????? ????????? ??????" + confirmRate);
			
			model.addObject("confirmRate", confirmRate);
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
	public int likeUp (@RequestParam("mNo") int mNo, @RequestParam("cNo") int cNo) {
		
		Likes likes = new Likes();
		int confirmLike = 0; 
		
		likes.setMNo(mNo);
		likes.setCNo(cNo); 
	
		confirmLike = service.findLikes(likes);
		if(confirmLike == 0) {
			
			service.likeUp(mNo, cNo);
			
		} else if(confirmLike == 1) {
			
			service.likeDown(mNo, cNo);
		}
		
		return confirmLike;
		
	}
	
//	@ResponseBody
//	@PostMapping("/contents/contents_detail/likeDown")
//	//@RequestMapping(value = "/contents/contents_detail/likeUp", method = { RequestMethod.POST })	
//	public void likeDown (@RequestParam("mNo") int mNo, @RequestParam("cNo") int cNo) {
//
//		
//		
//	}
	
	@ResponseBody
	@PostMapping("/contents/commentLike")
	public int commentLike (@RequestParam("rate_no") int rate_no, @RequestParam("m_no") int m_no) {

		System.out.println(m_no);
		System.out.println(rate_no);
		System.out.println("???????????? ?????? ??????");
		
		Map<String, Object> map	= new HashMap<>();
		
		map.put("m_no", m_no);
		map.put("rate_no", rate_no);
		
		int likeCheck = service.likeCheck(map);
		if(likeCheck == 0) {
			// ????????? ?????? ??????
			service.insertLike(map); // RATELIKES ????????? ??????
			service.updateLike(rate_no);	// RATE ????????? RATE_LIKE +1
			
		} else if(likeCheck == 1) {
			// ????????? ??????
			service.deleteLike(map); // RATELIKES ????????? ??????
			service.updateLikeCancel(rate_no); // RATE ????????? RATE_LIKE -1

		}
		
		return likeCheck;

	}	
	
	@ResponseBody
	@PostMapping("/contents/likeCount")
	public int likeCount (@RequestParam("rate_no") int rate_no) {

	    System.out.println(rate_no);
	    System.out.println("????????? ???????????? ?????? ??????");
	    
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
			model.addObject("msg", "???????????? ??????????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_detail?no=" + rate.getC_no());
		} else {
			model.addObject("msg", "????????? ????????? ?????????????????????.");
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
		if(sort.equals("me")) {
			
		Map<String, Object> mymap = new HashMap<>();
		
		mymap.put("pageInfo", pageInfo);
		mymap.put("m_no", loginMember.getM_no());
		mymap.put("c_no", no);
		mymap.put("sort", sort);
			
		rates = service.orderByMyRate(mymap);	
		} else {
		rates = service.getCommentsList(pageInfo, no, sort); }
		
		Contents contents = null;
		contents = service.getBg(no);
		
		model.addObject("contents", contents);
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
			model.addObject("msg", "???????????? ??????????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_comments?no=" + rate.getC_no() + "&sort=new");
		} else {
			model.addObject("msg", "????????? ????????? ?????????????????????.");
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
			model.addObject("msg", "???????????? ??????????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_comments?no=" + no + "&sort=new");
		} else {
			model.addObject("msg", "????????? ????????? ?????????????????????.");
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
	
	@PostMapping("/contents/contents_form")
	public ModelAndView contentsFormWrite(ModelAndView model, @ModelAttribute Contents contents,
			@RequestParam("upFile") MultipartFile upFile,
			@RequestParam("chooseFile") MultipartFile chooseFile,
			@RequestParam("people_name") String people_name,
			@RequestParam("people_job") String people_job,
			@RequestParam("cp_role") String cp_role,
			@RequestParam("people_no") String people_no) { 
		
		int result = 0;
		
		log.info("UpFile is Empty : {}", upFile.isEmpty());
		log.info("UpFile Name : {}", upFile.getOriginalFilename());
		
		log.info("chooseFile is Empty : {}", chooseFile.isEmpty());
		log.info("chooseFile Name : {}", chooseFile.getOriginalFilename());
		
		
		System.out.println(contents);
		System.out.println(people_name);
		System.out.println(people_job);
		System.out.println(cp_role);
		System.out.println(people_no);
		
		// 1. ????????? ????????? ????????? ?????? ??? ????????? ??????
		if(upFile != null && !upFile.isEmpty()) {
			// ????????? ???????????? ?????? ??????
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/uploadFiles/contents").getFile().getPath();
				renamedFileName = MultipartFileUtil.save(upFile, location);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				contents.setC_opimg(upFile.getOriginalFilename());
				contents.setC_pimg(renamedFileName);
			}
		}
		
		if(chooseFile != null && !chooseFile.isEmpty()) {
			// ????????? ???????????? ?????? ??????
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/uploadFiles/contents").getFile().getPath();
				renamedFileName = MultipartFileUtil.save(chooseFile, location);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				contents.setC_obimg(chooseFile.getOriginalFilename());
				contents.setC_bimg(renamedFileName);
			}
		}
		
		// 2. ????????? ????????? ???????????? ????????? ???????????? ??????
		result = service.saveContents(contents);
		
		ContentsPeople contentspeople = new ContentsPeople();
		
		String[] peopleNoList = people_no.split(",");
		
		String[] peopleRoleList = cp_role.split(",");
		for(int i=0; i < peopleRoleList.length; i++){
			 
			System.out.println(peopleRoleList[i]);
			contentspeople.setC_no(result);
			contentspeople.setCp_role(peopleRoleList[i]);
			contentspeople.setPeople_no(Integer.parseInt(peopleNoList[i]));
			
			service.saveContentsPeople(contentspeople);
		}
		
		
		if(result > 0) {
			model.addObject("msg", "???????????? ??????????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_detail?no=" + result );
		} else {
			model.addObject("msg", "????????? ????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_form");
		}
				
		model.setViewName("common/msg");
		
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
	
	// ??????????????? ????????? ??????
	@GetMapping("/contents/contents_peoplesearch")
	public ModelAndView adminPeopleSearch(ModelAndView model, 
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam String keyword) {

		List<Search> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getPeopleSearchCount(keyword), 15);
		list = service.getPeopleSearchList(pageInfo, keyword);

		model.addObject("list", list);
		model.addObject("keyword", keyword);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("contents/contents_peoplesearch");
		
		return model;
	}
	
	@GetMapping("/contents/contents_update")
	public ModelAndView contentsUpdate(ModelAndView model, @RequestParam int no ) {
		Contents contents = null;
		List<ContentsPeople> contentsPeople = null;
		
		contents = service.getBg(no);
		contentsPeople = service.getContentsPeopleByNo(no);
		
		model.addObject("contentsPeople", contentsPeople);
		model.addObject("contents", contents);
		model.setViewName("contents/contents_update");
		return model;
	}
	
	@PostMapping("/contents/contents_update")
	public ModelAndView contentsUpdatePost(ModelAndView model, @ModelAttribute Contents contents,
															   @RequestParam("upFile") MultipartFile upFile,
															   @RequestParam("chooseFile") MultipartFile chooseFile,
															   @RequestParam("people_name") String people_name,
															   @RequestParam("people_job") String people_job,
															   @RequestParam("cp_role") String cp_role,
														       @RequestParam("people_no") String people_no) {
		int result = 0;
		
		log.info("UpFile is Empty : {}", upFile.isEmpty());
		log.info("UpFile Name : {}", upFile.getOriginalFilename());
		
		log.info("chooseFile is Empty : {}", chooseFile.isEmpty());
		log.info("chooseFile Name : {}", chooseFile.getOriginalFilename());
	
		// 1. ????????? ????????? ????????? ?????? ??? ????????? ??????
		if(upFile != null && !upFile.isEmpty()) {
			// ????????? ???????????? ?????? ??????
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/uploadFiles/contents").getFile().getPath();
				renamedFileName = MultipartFileUtil.save(upFile, location);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				contents.setC_opimg(upFile.getOriginalFilename());
				contents.setC_pimg(renamedFileName);
			}
		}
		
		if(chooseFile != null && !chooseFile.isEmpty()) {
			// ????????? ???????????? ?????? ??????
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/uploadFiles/contents").getFile().getPath();
				renamedFileName = MultipartFileUtil.save(chooseFile, location);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				contents.setC_obimg(chooseFile.getOriginalFilename());
				contents.setC_bimg(renamedFileName);
			}
		}
		
		// 2. ????????? ????????? ???????????? ????????? ???????????? ??????
		result = service.saveContents(contents);
		
		ContentsPeople contentspeople = new ContentsPeople();
		
		String[] peopleNoList = people_no.split(",");
		
		String[] peopleRoleList = cp_role.split(",");
		for(int i=0; i < peopleRoleList.length; i++){
			 
			System.out.println(peopleRoleList[i]);
			contentspeople.setC_no(result);
			contentspeople.setCp_role(peopleRoleList[i]);
			contentspeople.setPeople_no(Integer.parseInt(peopleNoList[i]));
			
			service.saveContentsPeople(contentspeople);
		}
		
		
		if(result > 0) {
			model.addObject("msg", "???????????? ??????????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_detail?no=" + result );
		} else {
			model.addObject("msg", "????????? ????????? ?????????????????????.");
			model.addObject("location", "/contents/contents_form");
		}
				
		model.setViewName("common/msg");
		
		return model;
		

	}
	

	
}
