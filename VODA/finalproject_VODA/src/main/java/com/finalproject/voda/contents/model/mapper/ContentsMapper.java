package com.finalproject.voda.contents.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateResult;

@Mapper
public interface ContentsMapper {
	int selectContentsCount(String type);

	List<Contents> selectAll(RowBounds rowBounds, String type);

	Contents selectContentsByNo(int no);

	RateResult selectContentsRateByNo(int no);

	List<ContentsPeople> selectContentsPeopleByNo(int no);

	int insertRate(Rate rate);

	int selectCommentsCount(int no);

	List<Rate> selectCommentsByNo(RowBounds rowBounds, int no);
}
