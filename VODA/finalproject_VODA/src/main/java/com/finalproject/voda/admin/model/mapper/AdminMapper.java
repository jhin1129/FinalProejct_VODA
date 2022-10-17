package com.finalproject.voda.admin.model.mapper;

import java.util.List;

import javax.swing.text.AbstractDocument.Content;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.admin.model.vo.ContentsType;
import com.finalproject.voda.admin.model.vo.Cview;
import com.finalproject.voda.admin.model.vo.JoinMember;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.admin.model.vo.Sales;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.Search;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

@Mapper
public interface AdminMapper {
	
	ContentsType selectDashboardContentstypeData();
	JoinMember selectDashboardJoinmemberData();
	Cview selectDashboardCviewData();
	Sales selectDashboardSalesData();
	
	int selectViewCount();

	int selectMemberCount();
	List<Member> selectAllMember(RowBounds rowBounds);
	int deleteMember(@Param("memberno") long id, @Param("memberStatus") String string);

	int selectContentCount();
	List<Content> selectAllContent(RowBounds rowBounds);

	int selectProductCount();
	List<Product> selectAllProduct(RowBounds rowBounds);

	int selectBoardCount();
	List<Board> selectAllBoard(RowBounds rowBounds);

	int selectQnaCount();
	List<Board> selectAllQna(RowBounds rowBounds);
	
	int selectNoticeCount();
	List<Notice> selectAllNotice(RowBounds rowBounds);
	Notice selectNoticeByNo(int no);
	int updateNoticeView(Notice notice);
	
	// 공지사항검색
	int getNoticeSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getNoticeSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);
	
	int updateNotice(Notice notice);
	int insertNotice(Notice notice);
	int updateNoticeStatus(@Param("noticeno") int no, @Param("noticeStatus") String string);
	
	int selectTotalviewCount();
	List<Member> selectTotalviewList(RowBounds rowBounds);















}
