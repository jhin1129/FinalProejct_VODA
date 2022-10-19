package com.finalproject.voda.order.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.order.model.mapper.OrderMapper;
import com.finalproject.voda.order.model.vo.Order;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public Order findOrderByNo(int pno) {
		// TODO Auto-generated method stub
		return orderMapper.findOrderByNo(pno);
	}

}
