package com.finalproject.voda.people.model.service;

import java.util.List;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.people.model.vo.People;

public interface PeopleService {

	People findPeopleByNo(int people_no);

	List<People> getPeopleList(PageInfo pageInfo);

	int save(People people);

	int getPeopleCount();


}
