package com.fit.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.mapper.MemberMapper;
import com.fit.model.MemAddressVO;
import com.fit.model.MemberVO;
import com.fit.service.MemDelService;
import com.fit.service.MemberService;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping(value = "/")
@Log4j
public class PageController {
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	

		
		
		//마이페이지로 이동
		@RequestMapping(value = "myPage", method = RequestMethod.GET)
		public void myPgGET() {
			
			logger.info("마이페이지로 이동");
			
		}
		
	
		
		//아이디, 비밀번호 찾기 페이지로 이동
		@RequestMapping(value = "userSearch", method = RequestMethod.GET)
		public void findIdGET() {
			
			logger.info("아이디, 비밀번호 찾기 페이지로 이동");
			
		}
		
		//배송지 관리 페이지로 이동
		@RequestMapping(value = "dest", method = RequestMethod.GET)
		public void viewAddDelGET() {
					
			logger.info("배송지 관리 페이지로 이동");
		

		}
		
		@Autowired
		private MemDelService memdelservice;
		
		//배송지 등록
		@RequestMapping(value="/dest", method=RequestMethod.POST)
		public String AddDelPOST(MemAddressVO memad) throws Exception{
			
			logger.info("dest 진입");

			
			//배송지 등록 실행
			memdelservice.addMemDel(memad);
			logger.info("등록 성공");
			return "redirect:/dest";
			
			
			
		}
		
		

		//회원정보수정완료 페이지로 이동
		@RequestMapping(value = "update", method = RequestMethod.GET)
		public void updateSGET() {
			
			logger.info("회원정보페이지 수정 완료로 이동");
			
		}
		
		
		
		//회원정보 페이지로 이동
		@RequestMapping(value = "profile", method = RequestMethod.GET)
		public void proGET() {
			
			logger.info("회원정보페이지로 이동");
			
		}
		
		
		@Autowired
		private MemberService service;
		
	    
	    @PostMapping("profile")
	    public String userModifyPOST(MemberVO member, RedirectAttributes rttr) {
	    	service.memberUpdate(member);
	    	rttr.addFlashAttribute("result", "modify success");
	    	return "redirect:/update";
	    }
	
		

		
	}
		
		
		

		
		
		//회원탈퇴
		
		/*
		@RequestMapping(value="memberDelete", method=RequestMethod.GET)
		
		public String memberDeleteGET(MemberVO member) throws Exception{
			
			logger.info("회원탈퇴 진입");
			
		return "/memberDelete";	
			
		}
			
		
		
		@Autowired
		private MemberService memberservice;
		
		@PostMapping("MemberDelete")
		public String MemberDeletePOST(int memberId, RedirectAttributes rttr) {
			memberservice.memberDelete(memberId);
			rttr.addFlashAttribute("result", "delete success");
			 return "redirect: /member/memberDeleteSuc";
			
		}
		
		*/
		
		
		
		
		
		


