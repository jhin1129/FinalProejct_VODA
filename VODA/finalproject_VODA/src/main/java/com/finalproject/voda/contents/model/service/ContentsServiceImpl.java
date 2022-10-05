package com.finalproject.voda.contents.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.contents.model.mapper.ContentsMapper;

@Service
public class ContentsServiceImpl implements ContentsService {
	@Autowired
	private ContentsMapper mapper;
	
	@Override
	public int getContentsCount() {
	
		return mapper.selectContentsCount();
	}

}
