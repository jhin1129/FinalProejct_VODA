package com.finalproject.voda.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.product.model.service.ProductService;
import com.finalproject.voda.product.model.vo.Product;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService service;
	
	@GetMapping("/product_all_list")
	public ModelAndView all_list(ModelAndView model, 
			@RequestParam(value = "page", defaultValue = "1") int page) {
		List<Product> product_all_list = null;
		PageInfo pageInfo = null;
		
		pageInfo = new PageInfo(page, 10, service.getProductAllCount(), 10);
		product_all_list = service.getProductList(pageInfo);
				
		model.addObject("product_all_list", product_all_list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("product/product_all_list");
		
		return model;
	}
	@GetMapping("/product_detail")
	public ModelAndView view(ModelAndView model, @RequestParam int pno) {
		Product product = null;
		
		product = service.findProductByNo(pno);
		
		model.addObject("product", product);
		model.setViewName("product/product_detail");
		
		return model;
	}
	
	@GetMapping("/product_create")
	public String ProductCreate() {
		log.info("게시글 작성 페이지 요청");
		return "product/product_create";
	}
	
	@PostMapping("/product_create")
	public ModelAndView ProductCreate(
						ModelAndView model,
						@ModelAttribute Product product) {
		int result = 0;
		result = service.saveProduct(product);
		
		if(result > 0) {
			model.addObject("msg", "게시글이 정상적으로 등록되었습니다.");
			model.addObject("location", "/product/product_detail?pno=" + product.getPno());
		} else {
			model.addObject("msg", "게시글 등록을 실패하였습니다.");
			model.addObject("location", "/product/product_create");
		}
		System.out.println(result);
		return model;
	}
	
	@GetMapping("/product_delete")
	public ModelAndView ProductDelete(
						ModelAndView model,
						@RequestParam int pno) {
		int result = 0;
		Product product = null;
		
		product = service.findProductByNo(pno);
		
		result = service.deleteProduct(pno);
		
		if(result > 0) {
			model.addObject("msg", "게시글이 정상적으로 삭제되었습니다.");
			model.addObject("location", "/product/product_all_list");
		} else {
			model.addObject("msg", "게시글 삭제를 실패하였습니다.");
			model.addObject("location", "/product/product_detail?pno=" + pno);
		}
		model.setViewName("common/msg");
		
		return model;
	}
	
}
