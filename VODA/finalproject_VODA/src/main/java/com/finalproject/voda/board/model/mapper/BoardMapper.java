package com.finalproject.voda.board.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.board.model.vo.Board;

@Mapper
public interface BoardMapper {
	int selectBoardCount(String type);

	List<Board> selectAllBoard(RowBounds rowBounds, String type);

	Board selectBoardByNo(int no);

	int updateBoardStatus(@Param("bno")int no, @Param("bstatus") String string);

	int updateBoard(Board board);

	int insertBoard(Board board);
}
