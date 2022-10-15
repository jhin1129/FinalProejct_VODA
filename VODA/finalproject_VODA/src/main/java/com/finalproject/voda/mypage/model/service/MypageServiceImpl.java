package com.finalproject.voda.mypage.model.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.mypage.model.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	private MypageMapper mapper;
	
	@Override
	public List<Contents> getLikesList(int mNo) {
		
		List<Integer> likesListCno = mapper.selectLikesCNoList(mNo);
		
		List<Contents> contentsList = new ArrayList<Contents>();
		
		for(int i = 0; i < likesListCno.size(); i++) {
			contentsList.add(mapper.selectContentsByCNo(likesListCno.get(i)));
		}
		
		return contentsList;
	}

	@Override
	public List<Contents> getLikesList(int m_no, String type) {
		
		List<Integer> likesListCno = mapper.selectLikesCNoList(m_no);
		
		List<Contents> contentsList = new ArrayList<Contents>();
		
		for(int i = 0; i < likesListCno.size(); i++) {
			Contents contents = mapper.selectContentsByCNoType(likesListCno.get(i), type);
			if(contents != null) {
				contentsList.add(contents);
			}
		}
		
		return contentsList;
	}
	
	@Override
	public List<Contents> getreviewList(int mNo) {
		
		List<Integer> reviewListCno = mapper.selectReviewCNoList(mNo);
		
		List<Contents> reviewList = new ArrayList<Contents>();
		
		for(int i = 0; i < reviewListCno.size(); i++) {
			reviewList.add(mapper.selectContentsByCNo(reviewListCno.get(i)));
		}
		
		return reviewList;
	}
	
	@Override
	public List<Contents> getReviewList(int m_no, String type) {
		
		List<Integer> reviewListCno = mapper.selectReviewCNoList(m_no);
		
		List<Contents> reviewList = new ArrayList<Contents>();
		
		for(int i = 0; i < reviewListCno.size(); i++) {
			Contents contents = mapper.selectContentsByCNoType(reviewListCno.get(i), type);
			if(contents != null) {
				reviewList.add(contents);
			}
		}
		
		return reviewList;
	}
	
	@Override
	public int getFreeBoardCount(int m_no) {
		// TODO Auto-generated method stub
		return mapper.selectFreeBoardCount(m_no);
	}
	
	@Override
	public List<Board> getfreeBoardList(PageInfo pageInfo, int mNo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.selectFreeBoardList(rowBounds, mNo);
	}

	@Override
	public int getQnaBoardCount(int m_no) {
		// TODO Auto-generated method stub
		return mapper.selectQnaBoardCount(m_no);
	}
	
	@Override
	public List<Board> getqnaBoardList(PageInfo pageInfo, int mNo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return mapper.selectQnaBoardList(rowBounds, mNo);
	}



}
