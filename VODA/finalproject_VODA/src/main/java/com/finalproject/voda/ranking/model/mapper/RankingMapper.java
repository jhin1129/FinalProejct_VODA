package com.finalproject.voda.ranking.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalproject.voda.contents.model.vo.Contents;

@Mapper
public interface RankingMapper {

	List<Contents> selectAll(String type);

}
