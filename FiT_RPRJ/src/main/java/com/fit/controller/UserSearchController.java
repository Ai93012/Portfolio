package com.fit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/userSearch/*")
@Log4j
public class UserSearchController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);




//아이디 찾기 페이지
		@RequestMapping(value = "/idSearch", method = RequestMethod.GET)
		public void idFindPageGET() {
							
		logger.info("아이디 찾기 페이지로 이동");
							
						}


		//아이디 찾기 결과
				@RequestMapping(value = "/idResult", method = RequestMethod.GET)
				public void idResultPageGET() {
									
				logger.info("아이디 찾기 결과로 이동");
									
								}
				//비밀번호 찾기 페이지
				@RequestMapping(value = "/pwSearch", method = RequestMethod.GET)
				public void pwFindPageGET() {
									
				logger.info("비밀번호 찾기 페이지로 이동");
									
								}


				//비밀번호 찾기 결과
						@RequestMapping(value = "/pwResult", method = RequestMethod.GET)
						public void pwResultPageGET() {
											
						logger.info("비밀번호 찾기 결과로 이동");
											
										}
		
		

}