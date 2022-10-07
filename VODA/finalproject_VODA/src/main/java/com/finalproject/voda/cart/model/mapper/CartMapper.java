package com.finalproject.voda.cart.model.mapper;

import java.util.List;

import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;

public interface CartMapper {

	List<Cart> getCartList(PageInfo pageInfo);


	
}
