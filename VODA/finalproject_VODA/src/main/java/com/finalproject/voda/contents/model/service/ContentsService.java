package com.finalproject.voda.contents.model.service;

import java.util.List;
import java.util.Map;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Likes;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateLikes;
import com.finalproject.voda.contents.model.vo.RateResult;
import com.finalproject.voda.contents.model.vo.SearchPeople;
import com.finalproject.voda.contents.model.vo.SearchResult;

public interface ContentsService {
	
	int getContentsCount(String type);

	List<Contents> getContentsList(PageInfo pageInfo, String type);

	Contents findContentsByNo(int no);

	RateResult getContentsRateByNo(int no);

	List<ContentsPeople> getContentsPeopleByNo(int no);

	int save(Rate rate);

	List<Rate> getCommentsList(PageInfo pageInfo, int no, String sort);

	int getCommentsCount(int no);

	List<SearchResult> getContentsSearch(String keyword);

	Rate getMyRate(int rateNo);

	int delete(int rateNo);

	List<SearchPeople> getPeopleSearch(String keyword);

	int findLikes(Likes likes);

	void likeUp(int mNo, int cNo);

	void likeDown(int mNo, int cNo);

	List<RateLikes> findRateLikes(Map<String, Object> map);

}
