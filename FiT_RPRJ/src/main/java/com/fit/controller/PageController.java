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
	

		
		
		//마이페이지 진입
		@RequestMapping(value = "myPage", method = RequestMethod.GET)
		public void myPgGET() {
			
			logger.info("마이 페이지 진입");
			
		}
		
	
		
		//아이디 찾기
		@RequestMapping(value = "userSearch", method = RequestMethod.GET)
		public void findIdGET() {
			
			logger.info("아이디 찾기 ");
			
		}
		
		//배송지 관리 
		@RequestMapping(value = "dest", method = RequestMethod.GET)
		public void viewAddDelGET() {
					
			logger.info("배송지 관리 페이지");
		

		}
		
		@Autowired
		private MemDelService memdelservice;
		
		//배송지 수정
		@RequestMapping(value="/dest", method=RequestMethod.POST)
		public String AddDelPOST(MemAddressVO memad) throws Exception{
			
			logger.info("dest 진입");

			
			//배송지 삭제
			memdelservice.addMemDel(memad);
			logger.info("배송지 삭제");
			return "redirect:/dest";
			
			
			
		}
		
		

		//ȸ�����������Ϸ� �������� �̵�
		@RequestMapping(value = "update", method = RequestMethod.GET)
		public void updateSGET() {
			
			logger.info("ȸ������������ ���� �Ϸ�� �̵�");
			
		}
		
		
		
		//ȸ������ �������� �̵�
		
		
		@GetMapping("/profile")
		public void proGET(MemberVO member, Model model) {
			
			model.addAttribute("userInfo");
		}
		
		
		
		@Autowired
		private MemberService service;
		
	    
	    @PostMapping("profile")
	    public String userModifyPOST(MemberVO member, RedirectAttributes rttr) {
	    	service.memberUpdate(member);
	    	rttr.addFlashAttribute("result", "modify success");
	    	return "redirect:/profile";
	    }
	
	  //ȸ��Ż��
		
	  	
	  		@RequestMapping(value="memberDelete", method=RequestMethod.GET)
	  		
	  		public String memberDeleteGET(MemberVO member) throws Exception{
	  			
	  			logger.info("ȸ��Ż�� ����");
	  			
	  		return "/memberDelete";	
	  			
	  		}
	  		
	  		
	  		@PostMapping("/memberDelete")
	  		public String memberDeletePost(MemberVO member, RedirectAttributes rttr) {
	  			service.memberDelete(member);
	  			rttr.addFlashAttribute("result", "delete success");
	  			
	  			return "redirect:/main";
	  		}

		
	}
		
		
		

		
		
		
			/*
		
		
		@Autowired
		private MemberService memberservice;
		
		@PostMapping("MemberDelete")
		public String MemberDeletePOST(int memberId, RedirectAttributes rttr) {
			memberservice.memberDelete(memberId);
			rttr.addFlashAttribute("result", "delete success");
			 return "redirect: /member/memberDeleteSuc";
			
		}
		
		*/
		
		
		
		
		
		


