package com.finalproject.voda.admin.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.AbstractDocument.Content;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.admin.model.service.AdminService;
import com.finalproject.voda.admin.model.vo.ContentsType;
import com.finalproject.voda.admin.model.vo.Cview;
import com.finalproject.voda.admin.model.vo.JoinMember;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.admin.model.vo.Sales;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.MultipartFileUtil;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.common.util.Search;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
@SessionAttributes("loginMember")
public class AdminController {

	@Autowired
	private AdminService service;
	@Autowired
	private ResourceLoader resourceLoader;
	
//	기본 대시보드 연결
	@GetMapping("/admin_dashboard")
	public ModelAndView viewDashboard(ModelAndView model,
			@ModelAttribute ContentsType contentstype,
			@ModelAttribute JoinMember joinmember,
			@ModelAttribute Cview cview,
			@ModelAttribute Sales sales
			) {
		
//		Order order = null;
		
		contentstype = service.getDashboardContentstypeData();
		joinmember = service.getDashboardJoinmemberData();
		cview = service.getDashboardCviewData();
		sales = service.getDashboardSalesData();
		
		System.out.println("대시보드 contentstype " + contentstype);
		System.out.println("대시보드 joinmember " + joinmember);
		System.out.println("대시보드 cview " + cview);
		System.out.println("대시보드 sales " + sales);

		model.addObject("contentstype", contentstype);
		model.addObject("joinmember", joinmember);
		model.addObject("cview", cview);
		model.addObject("sales", sales);
		model.setViewName("/admin/admin_dashboard");
		
		return model;
	}
	
//	회원 관리 페이지
	@GetMapping("/admin_member")
	public ModelAndView adminMember(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Member> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getMemberCount(), 10);
		list = service.getMemberList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_member");
		
		return model;
	}
	
//	회원 비활성화 처리
	@PostMapping("/admin_member_delete")
    public String adminMemberDelete(@RequestParam List<String> memberIds){

		System.out.println(memberIds);
		
        for(int i=0; i<memberIds.size(); i++){
            Long id = Long.valueOf(memberIds.get(i));
            service.deleteMember(id);
            System.out.println(id);
        }

        return "redirect:/admin/admin_member";
    }
	
//	상품 관리 페이지
	@GetMapping("/admin_goods")
	public ModelAndView adminGoods(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Product> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getProductCount(), 10);
		list = service.getProductList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_goods");
		
		return model;
	}
	
//	컨텐츠 정보 관리 페이지
	@GetMapping("/admin_content")
	public ModelAndView adminContent(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Content> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getContentCount(), 10);
		list = service.getContentList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_content");
		
		return model;
	}
	

//	인물관리 페이지
//	@GetMapping("/admin_people")
//	public String adminPeople() {
//		
//		return "/admin/admin_people";
//	}
	
//	상품 주문 관리 페이지
	@GetMapping("/admin_goods_order")
	public String adminGoodsOrder() {
		
		return "/admin/admin_goods_order";
	}

//	자유게시판 리스트
	@GetMapping("/admin_freeboard") 
	public ModelAndView freeboardList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Board> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getBoardCount(), 10);
		list = service.getBoardList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_freeboard");
		
		return model; 
	}
	
//	문의게시판 리스트
	@GetMapping("/admin_qna") 
	public ModelAndView qnaList(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		
		List<Board> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getQnaCount(), 10);
		list = service.getQnaList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_qna");
		
		return model; 
	}
	
//	공지사항 리스트
	@GetMapping("/admin_notice_list") 
	public ModelAndView noticeList(ModelAndView model, 
			@RequestParam(value = "page", defaultValue = "1") int page)  {
		
		List<Notice> list = null;
		PageInfo pageInfo = null;	
		
		pageInfo = new PageInfo(page, 10, service.getNoticeCount(), 10);
		list = service.getNoticeList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_notice_list");

		return model; 
	}
	
	// 공지사항 리스트 검색
	@GetMapping("/admin_notice_search")
	public ModelAndView NoticeSearch(ModelAndView model, 
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam String searchType,
			@RequestParam String keyword) {

		List<Search> search = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getNoticeSearchCount(searchType, keyword), 10);
		search = service.getNoticeSearchList(pageInfo, searchType, keyword);
				
		System.out.println(search);

		model.addObject("search", search);
		model.addObject("searchType", searchType);
		model.addObject("keyword", keyword);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("admin/admin_notice_search");
		
		return model;
	}
	
	//	공지사항 조회
	@GetMapping("/admin_notice_detail")
	public ModelAndView noticeView(ModelAndView model, @RequestParam int no,
			HttpServletRequest request, HttpServletResponse response) {
		Notice notice = null;
		
    	// 조회수 쿠키 관련
    	Cookie[] cookies = request.getCookies();
    	String viewhistory = "";
    	boolean hasRead = false;
    	
    	if(cookies != null) {
    		String name = null;
    		String value = null;
    		for (Cookie cookie : cookies) {
    			name = cookie.getName();
				value = cookie.getValue();
			
			if(name.equals("viewhistory")) {
				viewhistory = value;
				
				if(value.contains("|" + no + "|")) {
					hasRead = true;
					
					break;
				}
			}
		}
    }

    	if(!hasRead) {    		
    		Cookie cookie = new Cookie("viewhistory" ,viewhistory +  "|" +  no + "|");
    		
    		cookie.setMaxAge(-1); 
    		response.addCookie(cookie);
    	}
    	
    	HttpSession session = request.getSession(false);
    	Member loginMember = (session == null) ? null : (Member) session.getAttribute("member");
    	
    	
    	
		notice = service.findNoticeByNo(no , hasRead);
		
		model.addObject("notice", notice);
		model.setViewName("/admin/admin_notice_detail");
		
		return model;
	}
	
	
//	공지사항 작성 (접근)
	@GetMapping("/admin_notice_crud")
	public String Noticewrite() {

		return "/admin/admin_notice_crud";
	}
	
//	공지사항 작성 (등록 버튼 시)
	@PostMapping("/admin_notice_crud")
	public ModelAndView Noticewrite(
			ModelAndView model,
			@ModelAttribute Notice notice,
			@RequestParam("upfile") MultipartFile upfile,
			@SessionAttribute("loginMember") Member loginMember
			) {
		int result = 0;

		log.info("upfile is empty : {}",upfile.isEmpty());
		log.info("upfile Name : {}",upfile.getOriginalFilename());
		

		if(upfile != null && !upfile .isEmpty()) {
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/upload/notice").getFile().getPath();
			
				renamedFileName = MultipartFileUtil.save(upfile,location);
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				notice.setNoticeOriginalFileName(upfile.getOriginalFilename());
				notice.setNoticeRenamedFileName(renamedFileName);
			}
						
		}
		notice.setNoticeWriterNo(loginMember.getM_no());
		result = service.saveNotice(notice);
		
		System.out.println(result);
		System.out.println(notice);
		if(result > 0) {
			model.addObject("msg", "게시글 등록 성공");
			model.addObject("location", "/admin/admin_notice_detail?no=" + notice.getNoticeno());	
		} else {
			model.addObject("msg", "게시글 등록 실패");
			model.addObject("location", "/admin/admin_notice_crud");	
		}
		
		model.setViewName("common/msg");

		
		return model;
	}
	
//	공지사항 파일 다운로드
	@GetMapping("/admin_notice_detail/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestHeader("user-agent") String userAgent,
			@RequestParam String oname, @RequestParam String rname) {
		
		Resource resource = null;
		String downFileName = null;
		
		log.info("oname : {} , rname  : {}", oname,rname);
		log.info("{}",userAgent);
		
		

		try {
		
			resource = resourceLoader.getResource("resources/upload/notice/"+rname);
			if(userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1) {
				downFileName = URLEncoder.encode(oname, "UTF-8").replaceAll("\\+", "%20");
			} else {
				downFileName = new String(oname.getBytes("UTF-8"), "ISO-8859-1");
			}
			
			return ResponseEntity.ok()
								 .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM_VALUE)
								 .header(HttpHeaders.CONTENT_DISPOSITION,"attachment;filename="+downFileName)
								 .body(resource);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}
	
//	공지사항 수정 (접근)
	@GetMapping("/admin_notice_update")
	public ModelAndView noticeUpdate(
			ModelAndView model, 
			@RequestParam int no,
			@SessionAttribute("loginMember") Member loginMember)
			{
		
		Notice notice = null;
				
		notice = service.findNoticeByNo(no, true);
		
		
		model.addObject("notice",notice);
		model.setViewName("/admin/admin_notice_update");
		if(notice.getNoticeWriterId().equals(loginMember.getM_id())) {
		} else {
			model.addObject("msg","잘못된 접근입니다.");
			model.addObject("location","/admin/admin_notice_list");
			model.setViewName("common/msg");
		}

		return model;
	}
	
//	공지사항 수정 (수정버튼 클릭 시)
	@PostMapping("/admin_notice_update")
	public ModelAndView noticeUpdate(
			ModelAndView model,
			@ModelAttribute Notice notice,
			@RequestParam("upfile") MultipartFile upfile,
			@SessionAttribute("loginMember") Member loginMember) 
	{
		
		int result = 0;

		System.out.println(notice.getNoticeno());
		System.out.println(notice.getNoticeWriterId());
		
		if (service.findNoticeByNo(notice.getNoticeno(), true).getNoticeWriterId().equals(loginMember.getM_id())) {
			
			if (upfile != null && !upfile.isEmpty()) {
				String location = null;
				String renamedFileName = null;
				
				try {
					
					location = resourceLoader.getResource("resources/upload/notice").getFile().getPath();
					
					if(notice.getNoticeRenamedFileName() != null) {
						MultipartFileUtil.delete(location + "/" + notice.getNoticeRenamedFileName());
					}
					
					renamedFileName = MultipartFileUtil.save(upfile, location);
					
					if(renamedFileName != null) {
						notice.setNoticeOriginalFileName(upfile.getOriginalFilename());
						notice.setNoticeRenamedFileName(renamedFileName);
					}
					
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}
			result = service.saveNotice(notice);
			
			if(result > 0) { 
				model.addObject("msg","게시글이 정상적으로 수정되었습니다.");
				model.addObject("location","/admin/admin_notice_detail?no=" + notice.getNoticeno());
				
			} else {
				model.addObject("msg","게시글이 수정 실패.");
				model.addObject("location","/admin/admin_notice_detail?no" + notice.getNoticeno());
				
			}
		
		} else {
			model.addObject("msg","잘못된 접근입니다.");
			model.addObject("location","/admin/admin_notice_list");
			}
		
		model.setViewName("common/msg");
		
		return model;
	}

	
	// 공지사항 삭제
	@GetMapping("/admin_notice_delete")
	public ModelAndView delete(ModelAndView model, @RequestParam int no,
			@SessionAttribute("loginMember") Member loginMamber){ 
		int result = 0;
		Notice notice = null;
		notice = service.findNoticeByNo(no,true);
		
		if (notice.getNoticeWriterId().equals(loginMamber.getM_id())) {
			result = service.deleteNotice(no);
			
			if(result > 0) {
				model.addObject("msg", "게시글 삭제 성공");
				model.addObject("location", "/admin/admin_notice_list");	
			} else {
				model.addObject("msg", "게시글 삭제 실패");
				model.addObject("location", "/admin/admin_notice_detail?no="+no);	
			}
		} else {
			model.addObject("msg", "잘못된 접근입니다.");
			model.addObject("location", "/admin/admin_notice_list");
		}
		
		model.setViewName("common/msg");
		return model;
	}
	
//	통계 리스트 (조회수)
	@GetMapping("/admin_total_views") 
	public ModelAndView adminTotalViews(ModelAndView model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Member> list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getTotalviewCount(), 10);
		list = service.getTotalviewList(pageInfo);
		
		System.out.println(list);
		
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_total_views");
		
		return model;
	}

//	통계 리스트 (판매량순)
	@GetMapping("/admin_total_sales") 
	public String totalSales() {
		
		return "/admin/admin_total_sales"; 
	}
	
//	통계 리스트 (가입자수)
	@GetMapping("/admin_total_join") 
	public String totalJoin() {
		
		return "/admin/admin_total_join"; 
	}






}