package com.finalproject.voda.people.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.voda.common.util.PageInfo;
import com.finalproject.voda.people.model.mapper.PeopleMapper;
import com.finalproject.voda.people.model.vo.People;

@Service
public class PeopleServiceImpl implements PeopleService {

	@Autowired
	private PeopleMapper mapper;
	
	
	@Override
	public int getPeopleCount() {

		return mapper.selectPeopleCount();
	}

	@Override
	public List<People> getPeopleList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		int limit = pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);	

		return mapper.selectPeopleAll(rowBounds);
	}
	
	
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
