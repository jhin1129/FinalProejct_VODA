package com.finalproject.voda.admin.model.service;

import java.util.List;

import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

public interface AdminService {

	int getViewCount();

	int getMemberCount();
	List<Member> getMemberList(PageInfo pageInfo);

	int getNoticeCount();
	List<Notice> getNoticeList(PageInfo pageInfo);

	int getProductCount();
	List<Product> getProductList(PageInfo pageInfo);

	Notice findNoticeByNo(int no);

	int saveNotice(Notice notice);

	int deleteNotice(int no);





}
