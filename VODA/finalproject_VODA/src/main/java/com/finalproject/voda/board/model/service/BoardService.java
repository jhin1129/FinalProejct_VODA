package com.finalproject.voda.board.model.service;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;

public interface BoardService {

	int getBoardCount(String type);

	List<Board> getBoardList(PageInfo pageInfo, String type);

	Board findBoardByNo(int no);

	int deleteFree(int no);

	int saveBoard(Board board);

}
