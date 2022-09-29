package com.finalproject.voda.product.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.product.model.mapper.ProductMapper;
import com.finalproject.voda.product.model.vo.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper productMapper;

	@Override
	public int getProductAllCount() {
		// TODO Auto-generated method stub
		return productMapper.getProductAllCount();
	}

	@Override
	public List<Product> getProductList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return productMapper.getProductList(rowBounds);
	}

	@Override
	public Product findProductByNo(int pno) {
		// TODO Auto-generated method stub
		return productMapper.findProductByNo(pno);
	}

}
