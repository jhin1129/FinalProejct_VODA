package com.finalproject.voda.mypage.model.service;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.vo.Contents;

public interface MypageService {

	List<Contents> getLikesList(int mNo);

	List<Contents> getLikesList(int m_no, String type);
	
	List<Contents> getreviewList(int mNo);
	
	List<Contents> getReviewList(int m_no, String type);
	
	int getFreeBoardCount(int m_no);
	
	List<Board> getfreeBoardList(PageInfo pageInfo, int mNo);
	
	int getQnaBoardCount(int m_no);
	
	List<Board> getqnaBoardList(PageInfo pageInfo, int mNo);


}
