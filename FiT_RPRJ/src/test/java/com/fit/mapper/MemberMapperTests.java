package com.fit.mapper;




import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fit.model.MemberVO;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper membermapper;			
	
	
	//@Test
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setUserId("test3");			
		member.setUserPass("test3");			
		member.setUserName("test3");	
		member.setUserMail("test3");		
		member.setAddress1("test3");		
		member.setAddress2("test3");		
		member.setAdminCk(0);
	
		
		membermapper.memberJoin(member);		
		
	}
	
	//@Test
	public void memberLogin() throws Exception{
		MemberVO member = new MemberVO();
		
		//올바른 아이디 입력 경우
		member.setUserId("test");
		member.setUserPass("test");
		
		//올바르지 않은 아이디 입력 경우
		/* member.setUserId("test321231");
		member.setUserPass("test1231312");*/
		
		membermapper.memberLogin(member);
		System.out.println("결과 값 : " + membermapper.memberLogin(member));
	}
	
	@Test
	public void memberIdChk() throws Exception{
		String id = "test";        //존재하는 아이디
		String id2 = "test23123";  //존재하지 않는 아이디
		membermapper.idCheck(id);
		membermapper.idCheck(id2);
	}
	
	
	
}