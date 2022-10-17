package com.finalproject.voda.mypage.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.member.model.vo.Member;

public interface MypageMapper {

	List<Integer> selectLikesCNoList(int mNo);

	List<Integer> selectReviewCNoList(int mNo);
	
	Contents selectContentsByCNo(@Param("cNo") int cNo);
	
	Contents selectContentsByCNoType(@Param("cNo") int cNo, @Param("type") String type);
	
	int selectFreeBoardCount(int m_no);
	
	List<Board> selectFreeBoardList(RowBounds rowBounds, int mNo);

	int selectQnaBoardCount(int m_no);
	
	List<Board> selectQnaBoardList(RowBounds rowBounds, int mNo);

	List<Contents> selectdibsContentsList(int m_no, String type);

	int updateMember(Member member);

	int deleteMember(int m_no);


}
