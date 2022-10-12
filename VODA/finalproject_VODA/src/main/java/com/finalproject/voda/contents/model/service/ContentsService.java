package com.finalproject.voda.contents.model.service;

import java.util.List;

import com.finalproject.voda.board.model.vo.Board;
import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateResult;

public interface ContentsService {
	
	int getContentsCount(String type);

	List<Contents> getContentsList(PageInfo pageInfo, String type);

	Contents findContentsByNo(int no);

	RateResult getContentsRateByNo(int no);

	List<ContentsPeople> getContentsPeopleByNo(int no);

	int save(Rate rate);

	List<Rate> getCommentsList(PageInfo pageInfo, int no);

	int getCommentsCount(int no);
}
