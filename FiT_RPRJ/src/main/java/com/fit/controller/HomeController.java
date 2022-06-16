package com.fit.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fit.model.Criteria;
import com.fit.model.NewEventVO;
import com.fit.model.PageDTO;

import com.fit.service.NewEventService;
import com.fit.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */

@Controller
@Log4j
@AllArgsConstructor
public class HomeController {
	private ProductService service;
	private NewEventService eventService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		log.info("Welcome home!");
		// 주간베스트상품을 가져온다.
		Criteria cri = new Criteria(1, 8);
		model.addAttribute("list", service.getList(cri)); 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		// 최근에 등록된 이벤트 목록 3개 가져오기
//		List<EventVO> eventList = eventService.getMainEvent();
//		model.addAttribute("eventList", eventList);
		
		cri = new Criteria(1, 3);
		List<NewEventVO> eventList = eventService.getList(cri);
		model.addAttribute("eventList", eventList);

		return "home";
	}
	
}
