package com.fit.service;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import com.fit.model.MemberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	//로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	//아이디 중복 검사
	public int idCheck(String userId) throws Exception;
	
	//비밀번호 중복 검사
   public int passCheck(String userPass) throws Exception;
	
   
   //회원수정
   public void memberUpdate(MemberVO member);
   
	
	//회원탈퇴
	public void memberDelete(MemberVO member);
	
	
	//아이디 찾기 
	public String findId(String userMail);
	
	
	
}
