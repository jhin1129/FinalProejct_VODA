package com.finalproject.voda.product.model.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.product.model.vo.Product;

public interface ProductMapper {

	int getProductAllCount();

	List<Product> getProductList(RowBounds rowBounds);

	Product findProductByNo(int pno);

	int insertProduct(Product product);

	int deleteProduct(int pno);

}
