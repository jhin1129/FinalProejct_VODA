package com.finalproject.voda.admin.model.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.admin.model.vo.Notice;
import com.finalproject.voda.product.model.vo.Product;

public interface AdminMapper {

	int selectNoticeCount();

	int selectViewCount();

	List<Notice> selectAllNotice(RowBounds rowBounds);

}
