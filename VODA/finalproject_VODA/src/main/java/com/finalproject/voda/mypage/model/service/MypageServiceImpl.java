package com.finalproject.voda.mypage.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.board.model.vo.Board;
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
	public List<Board> getfreeBoardList(int mNo) {
		// TODO Auto-generated method stub
		return mapper.selectFreeBoardList(mNo);
	}

	@Override
	public List<Board> getqnaBoardList(int mNo) {
		// TODO Auto-generated method stub
		return mapper.selectQnaBoardList(mNo);
	}

}
