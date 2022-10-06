package com.finalproject.voda.board.model.service;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;

public interface BoardService {

	int getBoardCount();

	List<Board> getBoardList(PageInfo pageInfo);

}
