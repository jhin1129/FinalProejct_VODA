package com.finalproject.voda.admin.model.service;

import java.util.List;

import javax.swing.text.AbstractDocument.Content;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalproject.voda.admin.model.mapper.AdminMapper;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.member.model.vo.Member;
import com.finalproject.voda.product.model.vo.Product;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminMapper mapper;
	// 데이터 연결 테스트
	@Override
	public int getViewCount() {
		return mapper.selectViewCount();
	}
	
	// 회원관리 전체개수 카운트
	@Override
	public int getMemberCount() {
		return mapper.selectMemberCount();
	}

	// 회원관리 리스트 조회
	@Override
	public List<Member> getMemberList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllMember(rowBounds);	
	}
	
	// 회원 비활성화
	@Override
	public int deleteMember(Long id) {
		int result = 0;
		
		result = mapper.deleteMember(id, "N");
		
		return result;
	}

	// 컨텐츠 전체개수 카운트
	@Override
	public int getContentCount() {
		return mapper.selectContentCount();
	}
	
	// 컨텐츠 리스트 조회
	@Override
	public List<Content> getContentList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllContent(rowBounds);	
	}

	// 상품 전체개수 카운트
	@Override
	public int getProductCount() {
		return mapper.selectProductCount();
	}
	
	// 상품 리스트 조회
	@Override
	public List<Product> getProductList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllProduct(rowBounds);	
	}
	
	// 자유게시판 전체개수 카운트
	@Override
	public int getBoardCount() {
		return mapper.selectBoardCount();
	}

	// 자유게시판 리스트 조회
	@Override
	public List<Board> getBoardList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllBoard(rowBounds);	
	}

	// 문의게시판 전체개수 카운트
	@Override
	public int getQnaCount() {
		return mapper.selectQnaCount();
	}
	
	// 문의게시판 리스트 조회
	@Override
	public List<Board> getQnaList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.selectAllQna(rowBounds);	
	}

	// 공지사항 전체개수 카운트
	@Override
	public int getNoticeCount() {
		return mapper.selectNoticeCount();
	}
	
	// 공지사항 리스트 조회
	@Override
	public List<Notice> getNoticeList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllNotice(rowBounds);	
		}

	// 공지사항 상세 조회
	@Override
	public Notice findNoticeByNo(int no) {
		
		return mapper.selectNoticeByNo(no);
	}

	// 공지사항 등록
	@Transactional
	@Override
	public int saveNotice(Notice notice) {
		int result = 0;
		
		if(notice.getNoticeno() != 0) {
			// update
			result = mapper.updateNotice(notice);
		} else {
			// insert
			result = mapper.insertNotice(notice);
		}
		
		return result;
	}

	// 공지사항 삭제
	@Override
	public int deleteNotice(int no) {
		int result = 0;
		
		result = mapper.updateNoticeStatus(no, "N");
		
		return result;
	}

	




}
