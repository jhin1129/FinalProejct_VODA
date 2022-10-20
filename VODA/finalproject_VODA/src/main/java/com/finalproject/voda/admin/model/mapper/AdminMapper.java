package com.finalproject.voda.admin.model.mapper;

import java.util.List;

import javax.swing.text.AbstractDocument.Content;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.admin.model.vo.ContentsType;
import com.finalproject.voda.admin.model.vo.Cview;
import com.finalproject.voda.admin.model.vo.JoinMember;
import com.finalproject.voda.admin.model.vo.Monthlydata;
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
	List<Monthlydata> selectDashboardMonthlydataData();
	
	int selectViewCount();

	int selectMemberCount();
	List<Member> selectAllMember(RowBounds rowBounds);
	int getMemberSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getMemberSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);
	int deleteMember(@Param("memberno") long id, @Param("memberStatus") String string);

	int selectContentCount();
	List<Content> selectAllContent(RowBounds rowBounds);
	int getContentSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getContentSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);

	int selectProductCount();
	List<Product> selectAllProduct(RowBounds rowBounds);
	int getGoodsSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getGoodsSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);

	int selectBoardCount();
	List<Board> selectAllBoard(RowBounds rowBounds);
	int getFreeboardSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getFreeboardSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);

	int selectQnaCount();
	List<Board> selectAllQna(RowBounds rowBounds);
	int getQnaSearchCount(@Param("searchType") String searchType, @Param("keyword") String keyword);
	List<Search> getQnaSearchList(RowBounds rowBounds,@Param("searchType") String searchType, @Param("keyword") String keyword);
	
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
	List<Cview> selectTotalviewList(RowBounds rowBounds);
	List<Cview> selectTotalmonthviewList(RowBounds rowBounds, @Param("viewmonth") int viewmonth);
	
	Member updateNoticeStatus( @Param("memberStatus") String string);
	
	Board selectQnaType();















}
