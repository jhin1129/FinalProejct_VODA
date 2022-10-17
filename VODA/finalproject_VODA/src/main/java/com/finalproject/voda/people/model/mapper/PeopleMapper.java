package com.finalproject.voda.people.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.finalproject.voda.people.model.vo.People;

@Mapper
public interface PeopleMapper {

	int selectPeopleCount();

	List<People> selectPeopleAll(RowBounds rowBounds);

	People selectPeopleByNo(int people_no);

	int insertPeople(People people);

	int updatePeople(People people);

	int updatePeopleStatus(int people_no, String string);



}
