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
	public int insertCart(Cart cart) {
		// TODO Auto-generated method stub
		return cartMapper.insertCart(cart);
	}

	@Override
	public List<Cart> getCartList(int m_no) {
		// TODO Auto-generated method stub
		return cartMapper.getCartList(m_no);
	}

}
