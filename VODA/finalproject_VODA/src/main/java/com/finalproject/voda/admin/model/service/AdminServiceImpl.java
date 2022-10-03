package com.finalproject.voda.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.admin.model.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminMapper mapper;
	
	@Override
	public int getViewCount() {
		return mapper.selectViewCount();
	}

}
