
package com.fit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.MemberMapper;
import com.fit.model.MemberVO;

@Service
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
	
	/* ȸ�� ���� ����*/
	@Override
	public void memberUpdate(MemberVO member) throws Exception {
		membermapper.memberUpdate(member);
	}
	
	/* ȸ�� Ż��*/
	@Override
	public int memberDelete(int memberId) {
		return membermapper.memberDelete(memberId);
		
	}
	
}