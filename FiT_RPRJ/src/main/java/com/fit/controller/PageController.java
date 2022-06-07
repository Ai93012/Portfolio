package com.fit.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

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
	

		
		
		//������������ �̵�
		@RequestMapping(value = "myPage", method = RequestMethod.GET)
		public void myPgGET() {
			
			logger.info("������������ �̵�");
			
		}
		
	
		
		//���̵�, ��й�ȣ ã�� �������� �̵�
		@RequestMapping(value = "userSearch", method = RequestMethod.GET)
		public void findIdGET() {
			
			logger.info("���̵�, ��й�ȣ ã�� �������� �̵�");
			
		}
		
		//����� ���� �������� �̵�
		@RequestMapping(value = "dest", method = RequestMethod.GET)
		public void viewAddDelGET() {
					
			logger.info("����� ���� �������� �̵�");
		

		}
		
		@Autowired
		private MemDelService memdelservice;
		
		//����� ���
		@RequestMapping(value="/dest", method=RequestMethod.POST)
		public String AddDelPOST(MemAddressVO memad) throws Exception{
			
			logger.info("dest ����");

			
			//����� ��� ����
			memdelservice.addMemDel(memad);
			logger.info("��� ����");
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
		
	    
	    @PostMapping("/memberUpdate")
	    public String userModifyPOST(MemberVO member, RedirectAttributes rttr) {
	    	service.memberUpdate(member);
	    	rttr.addFlashAttribute("result", "modify success");
	    	return "redirect:/profile";
	    }
	
	    
	    @RequestMapping(value = "memberDeleteView", method = RequestMethod.GET)
		public void memberDeleteGET() {
			
			logger.info("회원탈퇴 페이지 진입");
			
		}
		
		
		@PostMapping("/memberDelete")
	    public String userDeletePOST(MemberVO member, RedirectAttributes rttr, HttpSession session) {
	    	service.memberDelete(member);
	    	rttr.addFlashAttribute("result", "delete success");
			 session.invalidate();
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
		
		
		
		
		
		


