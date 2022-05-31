package com.fit.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.model.MemAddressVO;
import com.fit.model.MemberVO;
import com.fit.service.MemDelService;
import com.fit.service.MemberService;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping(value = "/")
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
		
		

		
		
		//ȸ��Ż��
		@RequestMapping(value="memberDelete", method=RequestMethod.GET)
		
		public String memberDeleteGET(MemberVO member) throws Exception{
			
			logger.info("ȸ��Ż�� ����");
			
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
		
		
		
		
		
		
}

