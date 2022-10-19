package com.finalproject.voda.order.model.mapper;

import com.finalproject.voda.order.model.vo.Order;

public interface OrderMapper {

	Order findOrderByNo(int pno);

}
