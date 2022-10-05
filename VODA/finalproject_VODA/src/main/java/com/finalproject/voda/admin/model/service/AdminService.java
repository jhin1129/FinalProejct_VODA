package com.finalproject.voda.admin.model.service;

import java.util.List;

import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.common.util.PageInfo;

public interface AdminService {

	int getViewCount();

	int getNoticeCount();

	List<Notice> getNoticeList(PageInfo pageInfo);

}
