package com.fit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.model.Criteria;
import com.fit.model.NoticeVO;
import com.fit.model.PageMakeDTO;
import com.fit.service.BoardService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/board/*")
@Log4j
public class BoardController {
	
private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	


@Autowired
private BoardService bservice;


//게시판 메인 페이지로 이동
		@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
		public void boardMainPageGET() {
			
			logger.info("게시판 메인 페이지로 이동");
			
		}


	//이벤트 상세 페이지로 이동
		@RequestMapping(value = "/event", method = RequestMethod.GET)
		public void eventPageGET() {
			
			logger.info("이벤트 상세 페이지로 이동");
			
		}
		
		
	//이벤트 목록 페이지로 이동
		@RequestMapping(value = "/eventList", method = RequestMethod.GET)
		public void eventListPageGET() {
					
			logger.info("이벤트 목록 페이지로 이동");
					
				}
		
		
		//이벤트 작성글 페이지로 이동
		@RequestMapping(value = "/eventReg", method = RequestMethod.GET)
		public void eventregPageGET() {
							
		logger.info("이벤트 글 작성 페이지로 이동");
							
			}
		
		//이벤트 글 수정 페이지로 이동
		@RequestMapping(value = "/eventMod", method = RequestMethod.GET)
		public void eventDetPageGET() {
									
		logger.info("이벤트 글 수정 페이지로 이동");
									
					}
		
		//공지사항 페이지로 이동
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public void noticePageGET(int nBno, Model model) {
				
		model.addAttribute("pageInfo", bservice.getPageN(nBno));	
		logger.info("공지사항 페이지로 이동");
					
				}
		
		
		//공지 목록 페이지 접속 (페이징 적용)
		
		@GetMapping("/noticeList")
		public void noticeListPageGET(Model model, Criteria cri) {
			
			log.info("boardListGET");
			
			model.addAttribute("list", bservice.getListPaging(cri));
		
			int total = bservice.getTotal();
			
			PageMakeDTO pageMake = new PageMakeDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
		
		
		}
		
		
		
		//공지사항 글 작성 페이지로 이동
		@RequestMapping(value = "/noticeReg", method = RequestMethod.GET)
		public void noticeRegPageGET() {
							
		logger.info("공지사항 글 작성 페이지로 이동");
							
						}
		
		//공지사항 등록
		@PostMapping("/noticeReg")
		public String boardRegistPOST(NoticeVO nv, RedirectAttributes rttr) {
		log.info("NoticeVO : " + nv);
		bservice.registerN(nv);
		rttr.addFlashAttribute("result", "register success");
		
		return "redirect:/board/noticeList";
				}
		
		//공지사항 수정 페이지로 이동
		@RequestMapping(value = "/noticeMod", method = RequestMethod.GET)
		public void noticeDetPageGET(int nBno, Model model) {
			
			model.addAttribute("pageInfo", bservice.getPageN(nBno));
									
		logger.info("공지사항 수정 페이지로 이동");
									
								}
		//공지사항 수정
		@PostMapping("/noticeMod")
		public String noticeModPOST(NoticeVO nv, RedirectAttributes rttr) {
			bservice.modifyN(nv);
		rttr.addFlashAttribute("result", "modify success");
		return "redirect:/board/noticeList";
		}	
		
		//공지사항 삭제
		@PostMapping("/deleteN")
		public String noticeDeletePOST(int nBno, RedirectAttributes rttr) {
			
			bservice.deleteN(nBno);
			
			rttr.addFlashAttribute("result", "delete success");
			
			return "redirect:/board/noticeList";
		}
				
		//푸드스토리 상세 페이지로 이동
		@RequestMapping(value = "/foodStory", method = RequestMethod.GET)
		public void fStoryPageGET() {
					
		logger.info("푸드스토리 상세 페이지로 이동");
					
				}
		
		//푸드스토리 목록 페이지로 이동
		@RequestMapping(value = "/foodStoryList", method = RequestMethod.GET)
		public void fStoryListPageGET() {
							
		logger.info("푸드스토리 목록 페이지로 이동");
							
						}
		
		
		//푸드스토리 글 작성 페이지로 이동
		@RequestMapping(value = "/fsReg", method = RequestMethod.GET)
		public void fStoryRegPageGET() {
							
		logger.info("푸드스토리 글 작성 페이지로 이동");
							
						}
	
		//푸드스토리 글 수정 페이지로 이동
        @RequestMapping(value = "/fsMod", method = RequestMethod.GET)
        public void fStoryModPageGET() {
									
		logger.info("푸드스토리 글 작성 페이지로 이동");
									
								}
			
		
		//문의사항 상세 페이지로 이동
		@RequestMapping(value = "/qna", method = RequestMethod.GET)
		public void qnaGET() {
									
		logger.info("문의사항 목록 페이지로 이동");
									
								}
		
		//문의사항 목록 페이지로 이동
		@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
		public void qnaListGET() {
							
		logger.info("문의사항 목록 페이지로 이동");
							
						}
		
		//문의사항 글작성 페이지로 이동
		@RequestMapping(value = "/qnaReg", method = RequestMethod.GET)
	     public void qnaRegGET() {
									
		logger.info("문의사항 글작성 페이지로 이동");
		
		}
		
		//문의사항 글 수정 페이지로 이동
				@RequestMapping(value = "/qnaMod", method = RequestMethod.GET)
			     public void qnaModGET() {
											
				logger.info("문의사항 글 수정 페이지로 이동");						
								}
	
}


