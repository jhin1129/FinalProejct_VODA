package com.finalproject.voda.contents.model.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ContentsMapper {
	int selectContentsCount();
}
