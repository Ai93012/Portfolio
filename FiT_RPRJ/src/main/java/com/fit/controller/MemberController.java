package com.fit.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.model.MemberVO;
import com.fit.service.MemberService;




@Controller
@RequestMapping(value = "/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	

	@Autowired
	private MemberService memberservice;

	//회원가입 페이지로 이동
		@RequestMapping(value = "joinForm", method = RequestMethod.GET)
		public void loginGET() {
			
			logger.info("회원가입 페이지로 이동");
			
		}
		
		//회원가입
		@RequestMapping(value="/joinForm", method=RequestMethod.POST)
		
		public String joinPOST(MemberVO member) throws Exception{
			
			logger.info("회원가입 진입");
			
			//회원가입 서비스 실행
			memberservice.memberJoin(member);
			
			logger.info("회원가입 성공");
			
			return "redirect:/main";
			
		}
		
		
		

		
		
		
		//아이디 중복검사
		@RequestMapping(value ="/memberIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberIdChkPOST(String userId) throws Exception{
			logger.info("memberIdChk() 진입");
			
			int result = memberservice.idCheck(userId);
			
			logger.info("결과값 = " + result);
			
			if(result !=0) {
				
				return "fail";
			
			} else {
			
				return "success";
			
			}
			
			
		}
		
		//비밀번호 체크
				@RequestMapping(value ="/memberPassChk", method = RequestMethod.POST)
				@ResponseBody
				public String memberPassChkPOST(String userPass) throws Exception{
					logger.info("memberPassChk() 진입");
					
					int result = memberservice.passCheck(userPass);
					
					logger.info("결과값 = " + result);
					
					if(result !=0) {
						
						return "fail";
					
					} else {
					
						return "success";
					
					}
					
					
				}
		
		
		
		//로그인 페이지로 이동
		@RequestMapping(value = "loginForm", method = RequestMethod.GET)
		public void joinGET() {
			
			logger.info("로그인 페이지로 이동");
	
		}
		
		//로그인 처리
		@RequestMapping(value="loginForm", method=RequestMethod.POST)
		  public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
	        
	       // System.out.println("login 메서드 진입");
	       // System.out.println("전달된 데이터 : " + member);
	        
			HttpSession session = request.getSession();
			MemberVO lvo = memberservice.memberLogin(member);
			
			
			//일치하지 않는 아이디, 비밀번호 입력
			if(lvo == null) {
				int result = 0;
				rttr.addFlashAttribute("result", result);
				return "redirect:/member/loginForm";
				
			}
			
			
			//일치하는 아이디, 비밀번호의 경우 (로그인 성공)
			session.setAttribute("member", lvo);
			
	        return "redirect:/main";
	    }
		
		
		//마이페이지로 이동
		@RequestMapping(value = "myPage", method = RequestMethod.GET)
		public void myPgGET() {
			
			logger.info("마이페이지로 이동");
			
		}
		
		
				
				
				
		
		/* 메인페이지 로그아웃 */
			 @RequestMapping(value="logout.do", method=RequestMethod.GET)
			 public String logoutMainGET(HttpServletRequest request) throws Exception{
				       
				 logger.info("logoutMainGET 메서드 진입");
				 
				 HttpSession session = request.getSession();
				 session.invalidate();
				 
				 return "redirect:/main";
				    }
				
		
		
				
			
				
	
				
				
				
			
		
}

			 
			 