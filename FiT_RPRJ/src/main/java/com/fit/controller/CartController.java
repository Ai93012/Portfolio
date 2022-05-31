package com.fit.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.model.MemberVO;
import com.fit.service.MemberService;

@Controller
@RequestMapping(value = "/cart")
public class CartController {
	

		private static final Logger logger = LoggerFactory.getLogger(CartController.class);
		
		//Cart 
			@RequestMapping(value = "/cartView", method = RequestMethod.GET)
			public void mainPageGET() {
				
				logger.info("주문조회 페이지로 이동");
				
			}
		
	}



