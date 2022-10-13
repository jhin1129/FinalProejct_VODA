package com.finalproject.voda.mypage.model.service;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;

public interface MypageService {

	List<Contents> getLikesList(int mNo);

	List<Board> getfreeBoardList(int mNo);

	List<Board> getqnaBoardList(int mNo);

}
