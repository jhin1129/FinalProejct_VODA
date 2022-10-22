package com.finalproject.voda.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.cart.model.service.CartService;
import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.service.ProductService;

@Controller
@RequestMapping("/product")
@SessionAttributes("loginMember")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@GetMapping("/product_cart")
	public ModelAndView cart_list (ModelAndView model,
			@SessionAttribute("loginMember") Member loginMember) {
		List<Cart> cart = null;
		cart = cartService.getCartList(loginMember.getM_no());
		System.out.println(cart);
		model.addObject("cart", cart);
		model.setViewName("product/product_cart");
		
		return model;
	}
	
	@GetMapping("/cart_insert")
	public ModelAndView cartInsert(
						ModelAndView model,
						@ModelAttribute Cart cart,
						@SessionAttribute("loginMember") Member loginMember) {
		int result = 0;
		
		cart.setMno(loginMember.getM_no());
		result = cartService.insertCart(cart);
		
		if(result > 0) {
			model.addObject("msg", "장바구니에 등록되었습니다.");
			model.addObject("location", "/product/product_detail?pno=" + cart.getPno());
		} else {
			model.addObject("msg", "장바구니에 등록 실패!");
			model.addObject("location", "/product/product_detail?pno=" + cart.getPno());
		}
		model.setViewName("common/msg");
		
		return model;
	}

}
