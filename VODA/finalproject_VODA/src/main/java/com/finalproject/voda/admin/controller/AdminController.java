package com.finalproject.voda.admin.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.admin.model.service.AdminService;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.common.util.MultipartFileUtil;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
//@SessionAttributes("loginMember")
public class AdminController {

	@Autowired
	private AdminService service;
	@Autowired
	private ResourceLoader resourceLoader;
	
//	기본 대시보드 연결
	@GetMapping("/admin_dashboard")
	public ModelAndView view(ModelAndView model) {
		int viewCount = 0;
		
		viewCount = service.getViewCount();
		System.out.println(viewCount);
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
	public String adminContent() {
		
		return "/admin/admin_content";
	}

//	인물관리 페이지
	@GetMapping("/admin_people")
	public String adminPeople() {
		
		return "/admin/admin_people";
	}
	

//	상품 주문 관리 페이지
	@GetMapping("/admin_goods_order")
	public String adminGoodsOrder() {
		
		return "/admin/admin_goods_order";
	}
	
//	자유게시판 관리 페이지
	@GetMapping("/admin_freeboard")
	public String adminFreeboard() {
		
		return "/admin/admin_freeboard";
	}

//	문의게시판 관리 페이지
	@GetMapping("/admin_qna")
	public String adminQna() {
		
		return "/admin/admin_qna";
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
		model.addObject("pageInfo", pageInfo);	
		model.setViewName("/admin/admin_notice_list");
		
		return model; 
	}

	//	공지사항 조회
	@GetMapping("/admin_notice_detail")
	public ModelAndView noticeView(ModelAndView model, @RequestParam int no) {
		Notice notice = null;
		
		notice = service.findNoticeByNo(no);
		
		System.out.println(no);
		System.out.println(notice);
		
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
			@RequestParam("upfile") MultipartFile upfile
//			@SessionAttribute("loginMember") Member loginMember
			) {
		int result = 0;

		// 파일을 업로드 하지 않으면 true , 파일을 업로드하면 false
		log.info("upfile is empty : {}",upfile.isEmpty());
		// 파일을 업로드 하지 않으면 "" , 파일을 업로드하면 "파일명"
		log.info("upfile Name : {}",upfile.getOriginalFilename());
		
		// 1. 파일을 업로드 했는지 확인 후 파일을 저장
		if(upfile != null && !upfile .isEmpty()) {
			// 파일을 저장하는 로직 작성
			String location = null;
			String renamedFileName = null;
			
			try {
				location = resourceLoader.getResource("resources/upload/board").getFile().getPath();
			
				renamedFileName = MultipartFileUtil.save(upfile,location);
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(renamedFileName != null) {
				notice.setNoticeOriginalFileName(upfile.getOriginalFilename());
				notice.setNoticeRenamedFileName(renamedFileName);
			}
						
		}
		// 2. 작성한 게시글 데이터를 데이터베이스에 저장
//		notice.setWriterNo(loginMember.getNo());
		result = service.saveNotice(notice);
		
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

	@GetMapping("fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestHeader("user-agent") String userAgent,
			@RequestParam String oname, @RequestParam String rname) {
		
		Resource resource = null;
		String downFileName = null;
		
		log.info("oname : {} , rname  : {}", oname,rname);
		log.info("{}",userAgent);
		
		

		try {
		
			resource = resourceLoader.getResource("resources/upload/board/"+rname);
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
			@RequestParam int no)
			//@SessionAttribute("loginMember") Member loginMember)
			{
		
		Notice notice = null;
				
		notice = service.findNoticeByNo(no);
		
		
		model.addObject("notice",notice);
		model.setViewName("/admin/admin_notice_update");
//		if(notice.getNoticeWriterId().equals(loginMember.getId())) {
//		} else {
//			model.addObject("msg","잘못된 접근입니다.");
//			model.addObject("location","/admin/admin_notice_list");
//			model.setViewName("common/msg");
//		}

		return model;
	}
	
//	공지사항 수정 (수정버튼 클릭 시)
	@PostMapping("/admin_notice_update")
	public ModelAndView noticeUpdate(
			ModelAndView model,
			@ModelAttribute Notice notice,
			@RequestParam("upfile") MultipartFile upfile)
//			,@SessionAttribute("loginMember") Member loginMember) 
	{
		
		int result = 0;

//		if (service.findNoticeByNo(notice.getNoticeno()).getNoticeWriterId().equals(loginMember.getId())) {
			
			if (upfile != null && !upfile.isEmpty()) {
				String location = null;
				String renamedFileName = null;
				
				try {
					
					location = resourceLoader.getResource("resources/upload/board").getFile().getPath();
					
					if(notice.getNoticeRenamedFileName() != null) {
						// 이전에 업로드 된 첨부파일이 존재하면 삭제
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
				model.addObject("msg","게시글이 정상적으로 수정되었습니다..");
				model.addObject("location","/admin/admin_notice_detail?no=" + notice.getNoticeno());
				
			} else {
				model.addObject("msg","게시글이 수정 실패.");
				model.addObject("location","/board/update?no" + notice.getNoticeno());
				
			}
			
		 
//	else {
//			model.addObject("msg","잘못된 접근입니다.");
//			model.addObject("location","/admin/admin_notice_list");
//		}
		
		model.setViewName("common/msg");
		
		return model;
	}

	
	// 공지사항 삭제
	@GetMapping("/admin_notice_delete")
	public ModelAndView delete(ModelAndView model, @RequestParam int no) {
//			,@SessionAttribute("loginMember") Member loginMamber){ 
		int result = 0;
		Notice notice = null;
		notice = service.findNoticeByNo(no);
		
//		if (notice.getNoticeWriterId().equals(loginMamber.getId())) {
			result = service.deleteNotice(no);
			
			if(result > 0) {
				model.addObject("msg", "게시글 삭제 성공");
				model.addObject("location", "/admin/admin_notice_list");	
			} else {
				model.addObject("msg", "게시글 삭제 실패");
				model.addObject("location", "/admin/admin_notice_detail?no="+no);	
			}
//		} else {
//			model.addObject("msg", "잘못된 접근입니다.");
//			model.addObject("location", "/board/list");
//			
		model.setViewName("common/msg");
		return model;
	}
	
//	통계 리스트 (조회수)
	@GetMapping("/admin_total_views") 
	public String totalView() {
		
		return "/admin/admin_total_views"; 
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
