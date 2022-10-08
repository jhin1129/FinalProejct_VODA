package com.finalproject.voda.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.cart.model.service.CartService;
import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.product.model.vo.Product;

@Controller
@RequestMapping("/product")
public class CartController {
	@Autowired
	private CartService service;
	
	@GetMapping("/product_cart")
	public ModelAndView cart_list (ModelAndView model,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		List<Cart> cart = null;
		PageInfo pageInfo = null;
		cart = service.getCartList(pageInfo);
		model.addObject("cart", cart);
		
		model.setViewName("product/product_cart");
		
		
		
		return model;
		
	}
	
//	@GetMapping("/cart_insert")
//	public ModelAndView ProductDelete(
//						ModelAndView model,
//						@RequestParam int pno) {
//		int result = 0;
//		Cart cart = null;
//		
//		result = service.insertCart(pno);
//		
//		if(result > 0) {
//			model.addObject("msg", "게시글이 정상적으로 삭제되었습니다.");
//			model.addObject("location", "/product/product_all_list");
//		} else {
//			model.addObject("msg", "게시글 삭제를 실패하였습니다.");
//			model.addObject("location", "/product/product_detail?pno=" + pno);
//		}
//		model.setViewName("common/msg");
//		
//		return model;
//	}
}
