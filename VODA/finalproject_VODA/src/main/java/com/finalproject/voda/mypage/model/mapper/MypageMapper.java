package com.finalproject.voda.mypage.model.mapper;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;

public interface MypageMapper {

	List<Integer> selectLikesCNoList(int mNo);

	List<Integer> selectReviewCNoList(int mNo);
	
	Contents selectContentsByCNo(Integer integer);

	List<Board> selectFreeBoardList(int mNo);

	List<Board> selectQnaBoardList(int mNo);


}
