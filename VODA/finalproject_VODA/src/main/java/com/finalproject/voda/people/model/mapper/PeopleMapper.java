package com.finalproject.voda.people.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.finalproject.voda.people.model.vo.People;

@Mapper
public interface PeopleMapper {

	People selectPeopleByNo(int people_no);

	int insertPeople(People people);

}
