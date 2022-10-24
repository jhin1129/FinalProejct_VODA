package com.finalproject.voda.order.contorller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
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

import oracle.jdbc.proxy.annotation.Post;

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
			@ModelAttribute Order order,
			@SessionAttribute("loginMember") Member loginMember,
			@RequestParam List<Integer> porderqtt) {
		List<Cart> cart = new ArrayList<Cart>();
		String productName = null;
		
		cart = cartService.getCartList(loginMember.getM_no());
		
		for(int i=0; i<cart.size(); i++){
			cart.get(i).setPorderqtt(porderqtt.get(i));
			cart.get(i).setPprice(porderqtt.get(i) * cart.get(i).getPprice());
			}
		
		int totalOqtt = cartService.getTotalOqtt(porderqtt);
		int totalPrice = cartService.getTotalPrice(cart);
		
		productName = cart.get(0).getPname() + " 포함 총 " + totalOqtt + "개의 상품";
		
		model.addObject("cart", cart);
		model.addObject("totalPrice", totalPrice);
		model.addObject("totalOqtt", totalOqtt);
		model.addObject("productName", productName);
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
	
	@PostMapping("/order_list_insert")
	public ModelAndView ListInsertOrder (ModelAndView model,
			@ModelAttribute Order order,
			@ModelAttribute Pay pay,
			@RequestParam List<Integer> porderqtt,
			@SessionAttribute("loginMember") Member loginMember) {
		List<Cart> cart = new ArrayList<Cart>();
		int result = 0;
		int payno = 0;
		String productName = null;
		
		
		for(int i=0; i<cart.size(); i++){
			cart.get(i).setPorderqtt(porderqtt.get(i));
			cart.get(i).setPprice(porderqtt.get(i) * cart.get(i).getPprice());
			}
		int totalPrice = cartService.getTotalPrice(cart);
		
		cart = cartService.getCartList(loginMember.getM_no());
		
		payno = orderService.insertPay(pay);
		
		order.setMno(loginMember.getM_no());
		order.setPayno(payno);
		
		
		for (int i = 0; i < cart.size(); i++) {
			order.setPno(cart.get(i).getPno());
			order.setOqtt(porderqtt.get(i));
			
			result = orderService.insertOrder(order);
		}
		
		
		

		System.out.println();
		System.out.println(cart);
		
		model.addObject("productName", productName);
		model.addObject("totalPrice", totalPrice);
		model.addObject("cart", cart);
		model.addObject("order", order);
		model.setViewName("mainpage");
		
		if(result  > 0) {
			model.setViewName("mainpage");
		} else {
			model.setViewName("mainpage");
		}
		return model;
	}
	
	
}
