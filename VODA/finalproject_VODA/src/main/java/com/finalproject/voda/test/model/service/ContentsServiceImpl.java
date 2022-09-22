package com.finalproject.voda.test.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.test.model.mapper.ContentsMapper;

@Service
public class ContentsServiceImpl implements ContentsService {
	@Autowired
	ContentsMapper mapper;
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return mapper.selectCount();
	}

}
