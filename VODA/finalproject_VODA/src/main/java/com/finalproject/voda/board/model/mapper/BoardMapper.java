package com.finalproject.voda.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.board.model.vo.Board;

@Mapper
public interface BoardMapper {
	int selectBoardCount();

	List<Board> selectAllBoard(RowBounds rowBounds);
}
