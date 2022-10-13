package com.finalproject.voda.board.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalproject.voda.board.model.mapper.BoardMapper;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public int getBoardCount(String type) {
		
		return mapper.selectBoardCount(type);
	}

	// 자유게시판 리스트 조회
	@Override
	public List<Board> getBoardList(PageInfo pageInfo, String type) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.selectAllBoard(rowBounds, type);
	}
	
	// 자유게시판 상세 조회
	@Override
	public Board findBoardByNo(int no) {

		return mapper.selectBoardByNo(no);
	}

	// 자유게시판 삭제
	@Transactional
	@Override
	public int deleteFree(int no) {
		int result = 0;
		
		result = mapper.updateBoardStatus(no, "N");
		
		return result;
	}

}
