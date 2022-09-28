package com.finalproject.voda.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.product.model.service.ProductService;
import com.finalproject.voda.product.moodel.vo.Product;

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
		System.out.println(service.getProductAllCount());
		pageInfo = new PageInfo(page, 10, service.getProductAllCount(), 10);
		model.setViewName("product/product_all_list");
		return model;
	}
	
	
	
}
