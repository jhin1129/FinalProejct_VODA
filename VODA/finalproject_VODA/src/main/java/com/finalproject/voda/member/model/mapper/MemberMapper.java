package com.finalproject.voda.member.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.finalproject.voda.member.model.vo.Member;

@Mapper
public interface MemberMapper {
	Member selectMemberById(@Param("m_id") String id);

	int insertMember(Member member);

	int updateMember(Member member);

	int deleteMember(int no);

	Member selectMemberByEmail(String email);
}