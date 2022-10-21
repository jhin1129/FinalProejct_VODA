package com.finalproject.voda.cart.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.finalproject.voda.cart.model.vo.Cart;
import com.finalproject.voda.common.util.PageInfo;

public interface CartMapper {

	int insertCart(Cart cart);

	List<Cart> getCartList(@Param("pageInfo") PageInfo pageInfo,@Param("mno") int m_no);

}
