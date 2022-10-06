package com.finalproject.voda.cart.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.cart.model.mapper.CartMapper;
import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;
@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartMapper cartMapper;

	@Override
	public List<Cart> getCartList(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		return cartMapper.getCartList(pageInfo);
	}

	

	
}
