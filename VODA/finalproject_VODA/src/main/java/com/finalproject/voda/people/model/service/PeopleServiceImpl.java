package com.finalproject.voda.people.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.people.model.mapper.PeopleMapper;
import com.finalproject.voda.people.model.vo.People;

@Service
public class PeopleServiceImpl implements PeopleService {

	@Autowired
	private PeopleMapper mapper;
	
	@Override
	public People findPeopleByNo(int people_no) {

		return mapper.selectPeopleByNo(people_no);
	}

	@Override
	public int save(People people) {
		int result = 0;

		if(people.getPeople_no() != 0) {
			// update
//			result = mapper.updatePeople(people);
		} else {
			// insert
			result = mapper.insertPeople(people);
		}
		
		return result;
	}

}
