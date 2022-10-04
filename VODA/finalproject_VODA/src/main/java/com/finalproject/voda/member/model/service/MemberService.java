package com.finalproject.voda.member.model.service;

import com.finalproject.voda.member.model.vo.Member;

public interface MemberService {

	int save(Member memeber);

	Boolean isDuplicateID(String id);

	Member findMemberById(String id);

	Member login(String id, String password);

}
