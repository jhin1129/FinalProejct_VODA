package com.finalproject.voda.contents.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.contents.model.vo.Contents;

@Mapper
public interface ContentsMapper {
	int selectContentsCount();

	List<Contents> selectAll(RowBounds rowBounds);
}
