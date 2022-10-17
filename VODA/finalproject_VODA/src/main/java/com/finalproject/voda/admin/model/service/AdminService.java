package com.finalproject.voda.admin.model.service;

import java.util.List;

import javax.swing.text.AbstractDocument.Content;

import com.finalproject.voda.admin.model.vo.ContentsType;
import com.finalproject.voda.admin.model.vo.Cview;
import com.finalproject.voda.admin.model.vo.JoinMember;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.admin.model.vo.Sales;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.common.util.Search;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

public interface AdminService {

	ContentsType getDashboardContentstypeData();
	JoinMember getDashboardJoinmemberData();
	Cview getDashboardCviewData();
	Sales getDashboardSalesData();

	int getMemberCount();
	List<Member> getMemberList(PageInfo pageInfo);

	int getNoticeCount();
	List<Notice> getNoticeList(PageInfo pageInfo);

	int getContentCount();
	List<Content> getContentList(PageInfo pageInfo);

	int getProductCount();
	List<Product> getProductList(PageInfo pageInfo);
	
	int getBoardCount();
	List<Board> getBoardList(PageInfo pageInfo);

	int getQnaCount();
	List<Board> getQnaList(PageInfo pageInfo);

	Notice findNoticeByNo(int no, boolean hasRead);

	int saveNotice(Notice notice);

	int deleteNotice(int no);

	int deleteMember(Long id);

	int getNoticeSearchCount(String searchType, String keyword);
	List<Search> getNoticeSearchList(PageInfo pageInfo, String searchType, String keyword);
	
	int getTotalviewCount();
	List<Member> getTotalviewList(PageInfo pageInfo);











}
