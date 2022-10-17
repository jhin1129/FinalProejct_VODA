package com.finalproject.voda.people.model.service;

import com.finalproject.voda.people.model.vo.People;

public interface PeopleService {

	People findPeopleByNo(int people_no);

	int save(People people);

}
