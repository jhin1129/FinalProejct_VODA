package com.finalproject.voda.people.model.service;

import java.util.List;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.people.model.vo.People;

public interface PeopleService {

	int getPeopleCount();

	List<People> getPeopleList(PageInfo pageInfo);

	People findPeopleByNo(int people_no);

	int save(People people);

	int delete(int people_no);



}
