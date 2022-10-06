package com.finalproject.voda.board.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.board.model.mapper.BoardMapper;
import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public int getBoardCount() {
		
		return mapper.selectBoardCount();
	}

	@Override
	public List<Board> getBoardList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.selectAllBoard(rowBounds);
	}

}
