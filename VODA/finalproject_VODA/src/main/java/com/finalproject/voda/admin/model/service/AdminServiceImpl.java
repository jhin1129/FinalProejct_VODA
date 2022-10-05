package com.finalproject.voda.admin.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.admin.model.mapper.AdminMapper;
import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.common.util.PageInfo;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminMapper mapper;
	
	@Override
	public int getViewCount() {
		return mapper.selectViewCount();
	}

	@Override
	public int getNoticeCount() {
		
		return mapper.selectNoticeCount();
	}

	@Override
	public List<Notice> getNoticeList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1)*pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);

		return mapper.selectAllNotice(rowBounds);	
		}

}
