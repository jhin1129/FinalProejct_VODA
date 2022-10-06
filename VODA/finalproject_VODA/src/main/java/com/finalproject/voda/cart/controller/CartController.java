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
}
