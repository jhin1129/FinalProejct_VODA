package com.finalproject.voda.ranking.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.ranking.model.mapper.RankingMapper;

@Service
public class RankingServiceImpl implements RankingService {
	@Autowired
	private RankingMapper mapper;
	
	@Override
	public List<Contents> getRanking(String type) {
		
		
		return mapper.selectAll(type);
	}

}
