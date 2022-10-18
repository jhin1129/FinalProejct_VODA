package com.finalproject.voda.order.contorller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.cart.model.service.CartService;
import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;
//import com.finalproject.voda.order.service.OrderService;

//@Controller
//@RequestMapping("/product")
//public class OrderController {
//	@Autowired
//	private OrderService service;
//	
//	@GetMapping("/product_order")
//	public ModelAndView ProductOrder (ModelAndView model,
//			@ModelAttribute Cart cart) {
//		List<Cart> cart = null;
//		PageInfo pageInfo = null;
//		cart = service.getCartList(pageInfo);
//		model.addObject("cart", cart);
//		System.out.println(cart);
//		model.setViewName("product/product_cart");
//		
//		
//		
//		return model;
//		
//	}
	
	
	
	
	
//}
