package com.finalproject.voda.product.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.product.model.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper productMapper;

	@Override
	public int getProductAllCount() {
		// TODO Auto-generated method stub
		return productMapper.getProductAllCount();
	}

}
