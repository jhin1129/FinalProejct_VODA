package com.finalproject.voda.ranking.model.service;

import java.util.List;

import com.finalproject.voda.contents.model.vo.Contents;

public interface RankingService {


	List<Contents> getRanking(String type);

}
