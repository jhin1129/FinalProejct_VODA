package com.finalproject.voda.contents.model.service;

import java.util.List;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.vo.Contents;

public interface ContentsService {
	
	int getContentsCount();

	List<Contents> getContentsList(PageInfo pageInfo);
}
