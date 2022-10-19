package com.finalproject.voda.contents.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.contents.model.vo.Contents;
import com.finalproject.voda.contents.model.vo.ContentsPeople;
import com.finalproject.voda.contents.model.vo.Likes;
import com.finalproject.voda.contents.model.vo.Rate;
import com.finalproject.voda.contents.model.vo.RateLikes;
import com.finalproject.voda.contents.model.vo.RateResult;
import com.finalproject.voda.contents.model.vo.SearchPeople;
import com.finalproject.voda.contents.model.vo.SearchResult;

@Mapper
public interface ContentsMapper {
	int selectContentsCount(String type);

	List<Contents> selectAll(RowBounds rowBounds, String type);

	Contents selectContentsByNo(int no);

	RateResult selectContentsRateByNo(int no);

	List<ContentsPeople> selectContentsPeopleByNo(int no);

	int insertRate(Rate rate);

	int selectCommentsCount(int no);
		
	List<Rate> selectCommentsByNo(RowBounds rowBounds, Map<String, Object> map);

	List<SearchResult> selectSearchByKeyword(String keyword);

	Rate selectMyrate(Rate rate);

	int updateRate(Rate rate);

	int deleteRate(int rateNo);

	List<SearchPeople> selectPeopleSearchByKeyword(String keyword);

	int findLikes(Likes likes);

	void likeUp(Map<String, Object> map);

	void likeDown(Map<String, Object> map);

	List<RateLikes> findRateLikes(Map<String, Object> map);

	int likeCheck(Map<String, Object> map);

	void insertLike(Map<String, Object> map);

	void updateLike(int rate_no);

	void deleteLike(Map<String, Object> map);

	void updateLikeCancel(int rate_no);

}
