package com.finalproject.voda.contents.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.mapper.ContentsMapper;
import com.finalproject.voda.contents.model.vo.Contents;

@Service
public class ContentsServiceImpl implements ContentsService {
	@Autowired
	private ContentsMapper mapper;
	
	@Override
	public int getContentsCount() {
	
		return mapper.selectContentsCount();
	}

	@Override
	public List<Contents> getContentsList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);			
		
		return mapper.selectAll(rowBounds);
	}

}
