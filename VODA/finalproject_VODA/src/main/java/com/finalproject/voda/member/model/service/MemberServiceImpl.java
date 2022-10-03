package com.finalproject.voda.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalproject.voda.member.model.mapper.MemberMapper;
import com.finalproject.voda.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired 
	private MemberMapper mapper;
	
	@Override
	@Transactional 
	public int save(Member member) {
		int result = 0;
		
		if(member.getM_no() != 0) {
			// update
//			result = mapper.updateMember(member);
		} else {
			// insert
			member.setM_password(passwordEncoder.encode(member.getM_password()));
			
			result = mapper.insertMember(member);
		}
		
		return result;
	}
	
	@Override
	public Member findMemberById(String id) {
		
		return mapper.selectMemberById(id);
	}

	@Override
	public Boolean isDuplicateID(String id) {
		
		return this.findMemberById(id) != null;

	}

	@Override
	public Member login(String id, String password) {
		Member member = null;
				
		member = this.findMemberById(id);
		
		System.out.println("encode() : " + passwordEncoder.encode(password));
		
		if(member != null && passwordEncoder.matches(password, member.getM_password())) {
			return member;
		} else {
			return null;
		}
	}

}
