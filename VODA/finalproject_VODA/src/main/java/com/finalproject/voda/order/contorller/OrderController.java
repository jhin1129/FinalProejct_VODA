package com.finalproject.voda.order.contorller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.cart.model.service.CartService;
import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.order.model.service.OrderService;
import com.finalproject.voda.order.model.vo.Order;
import com.finalproject.voda.order.model.vo.Pay;
import com.finalproject.voda.product.model.service.ProductService;
import com.finalproject.voda.product.model.vo.Product;

@Controller
@SessionAttributes("loginMember")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	
	@GetMapping("/product_order")
	public ModelAndView ProductOrder (ModelAndView model,
			@RequestParam int pno,
			@RequestParam int porderqtt) {
		Product product = new Product();
		product = productService.findProductByNo(pno);
		product.setPorderqtt(porderqtt);
		product.setPprice(product.getPprice() * porderqtt);
		System.out.println(product);
		System.out.println(porderqtt);
		model.addObject("product", product);
		model.setViewName("product/product_order");
		
		return model;
		
	}
	
	@GetMapping("/product_list_order")
	public ModelAndView ProductListOrder (ModelAndView model,
			@SessionAttribute("loginMember") Member loginMember) {
		List<Cart> cart = null;
		cart = cartService.getCartList(loginMember.getM_no());
		System.out.println(cart);
		model.addObject("cart", cart);
		model.setViewName("product/product_list_order");
		
		return model;
		
	}
	
	
	@PostMapping("/order_insert")
	public ModelAndView InsertOrder (ModelAndView model,
			@ModelAttribute Order order,
			@ModelAttribute Pay pay,
			@SessionAttribute("loginMember") Member loginMember) {
//		pay = new Pay();
		int result = 0;
		int payno = 0;
		
		
		
		payno = orderService.insertPay(pay);
		
		order.setMno(loginMember.getM_no());
		order.setPayno(payno);
		
		result = orderService.insertOrder(order);
		
		System.out.println(loginMember);
		System.out.println(order);
		System.out.println(payno);
		System.out.println("pay" + pay);
		System.out.println(pay.getPayprice());
		
		if(result  > 0) {
			model.setViewName("mainpage");
		} else {
			model.setViewName("mainpage");
		}
		return model;
	}
	
	
}
