package com.finalproject.voda.cart.model.service;

import java.util.List;

import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;

public interface CartService {
	List<Cart> getCartList(PageInfo pageInfo);

	int insertCart(Cart cart);

	

	

}
