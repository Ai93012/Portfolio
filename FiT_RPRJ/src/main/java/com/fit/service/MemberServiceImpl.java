
package com.fit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.MemberMapper;
import com.fit.model.MemberVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper membermapper;

	
	/* ȸ������ */
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	/* ���̵� �ߺ� Ȯ�� */
	@Override
	public int idCheck(String userId) throws Exception {
		
		return membermapper.idCheck(userId);
	}
	
	/* ��й�ȣ �ߺ� Ȯ�� */
	@Override
	public int passCheck(String userPass) throws Exception {
		
		return membermapper.passCheck(userPass);
	}
	
	
	
	
	/* �α��� */
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return membermapper.memberLogin(member);
	}
	
	
	/* ȸ�� ���� */
	
	
	@Override
	public void memberUpdate(MemberVO member) {
		membermapper.memberUpdate(member);
	}
	
	
	/*회원 탈퇴*/
	@Override
	public void memberDelete(MemberVO member) {
		membermapper.memberDelete(member);
	}
	
	
	

	/* ȸ�� Ż��*/
	/*@Override
	public int memberDelete(MemberVO member) {
		return membermapper.memberDelete(member);
		
	}
	*/
	
}