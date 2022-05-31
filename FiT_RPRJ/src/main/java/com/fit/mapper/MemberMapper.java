package com.fit.mapper;

import com.fit.model.MemberVO;

public interface MemberMapper {

	//회원가입
		public void memberJoin(MemberVO member);

	
	//로그인
		public MemberVO memberLogin(MemberVO member);
		
	//아이디 중복 검사
		public int idCheck(String userId);
		
	//패스워드 체크
	public int passCheck(String userPass) throws Exception;
		
		
	//회원정보 수정
		public void memberUpdate(MemberVO member);
		
		
	//회원탈퇴
		public int memberDelete(int memberId);
	
	
		
		
		
}


