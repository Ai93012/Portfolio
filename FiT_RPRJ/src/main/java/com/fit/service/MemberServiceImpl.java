
package com.fit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.MemberMapper;
import com.fit.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper membermapper;

	
	/* 회원가입 */
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	/* 아이디 중복 확인 */
	@Override
	public int idCheck(String userId) throws Exception {
		
		return membermapper.idCheck(userId);
	}
	
	/* 비밀번호 중복 확인 */
	@Override
	public int passCheck(String userPass) throws Exception {
		
		return membermapper.passCheck(userPass);
	}
	
	
	
	
	/* 로그인 */
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return membermapper.memberLogin(member);
	}
	
	/* 회원 정보 수정*/
	@Override
	public void memberUpdate(MemberVO member) throws Exception {
		membermapper.memberUpdate(member);
	}
	
	/* 회원 탈퇴*/
	@Override
	public int memberDelete(int memberId) {
		return membermapper.memberDelete(memberId);
		
	}
	
}