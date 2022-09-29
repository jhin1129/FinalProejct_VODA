package com.finalproject.voda.product.model.service;

import java.util.List;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.product.model.vo.Product;

public interface ProductService {

	int getProductAllCount();

	List<Product> getProductList(PageInfo pageInfo);

	Product findProductByNo(int pno);
	
}
