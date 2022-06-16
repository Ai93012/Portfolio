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
import com.fit.model.EventVO;
import com.fit.model.FoodVO;
import com.fit.model.MemberVO;
import com.fit.model.NoticeVO;
import com.fit.model.PageMakeDTO;
import com.fit.model.QnaVO;
import com.fit.service.BoardService;

import com.fit.service.FoodService;
import com.fit.service.QnaService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/board/*")
@Log4j
public class BoardController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	


@Autowired
private BoardService nservice;




		//공지사항 상세보기
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public void noticePageGET(int nBno, Model model) {
				
		model.addAttribute("pageInfo", nservice.getPageN(nBno));	
		logger.info("공지사항 상세보기로 접속");
					
				}
		
		
		//공지사항 목록 페이지(페이징)
		@GetMapping("/noticeList")
		public void noticeListPageGET(Model model, Criteria cri) {
			log.info("boardListGET");
			
			model.addAttribute("list", nservice.getListPaging(cri));
		
			int total = nservice.getTotalN();
			PageMakeDTO pageMake = new PageMakeDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
			
		
		
		}
		
		
		
		//공지사항 작성 페이지
		@RequestMapping(value = "/noticeReg", method = RequestMethod.GET)
		public void noticeRegPageGET() {
							
		logger.info("공지사항 작성으로 이동");
							
						}
		
		//공지사항 작성
		@PostMapping("/noticeReg")
		public String boardRegistPOST(NoticeVO nv, MemberVO mv, RedirectAttributes rttr, Model model) {
		log.info("NoticeVO : " + nv);
		nservice.registerN(nv);
		rttr.addFlashAttribute("user", mv.getUserName());
		rttr.addFlashAttribute("result", "register success");
		
		return "redirect:/board/noticeList";
				}
		
		//공지사항 수정 페이지
		@RequestMapping(value = "/noticeMod", method = RequestMethod.GET)
		public void noticeDetPageGET(int nBno, Model model) {
			
			model.addAttribute("pageInfo", nservice.getPageN(nBno));
									
		logger.info("怨듭��궗�빆 �닔�젙 �럹�씠吏�濡� �씠�룞");
									
								}
		//공지사항 글 수정 
		@PostMapping("/modifyN")
		public String noticeModPOST(NoticeVO nv, RedirectAttributes rttr) {
			nservice.modifyN(nv);
		rttr.addFlashAttribute("result", "modify success");
		return "redirect:/board/noticeList";
		}	
		
		//공지사항 글 삭제
		@PostMapping("/deleteN")
		public String noticeDeletePOST(int nBno, RedirectAttributes rttr) {
			
			nservice.deleteN(nBno);
			
			rttr.addFlashAttribute("result", "delete success");
			
			return "redirect:/board/noticeList";
		}


		//寃뚯떆�뙋 硫붿씤 �럹�씠吏�濡� �씠�룞
		@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
		public void boardMainPageGET() {
			
			logger.info("寃뚯떆�뙋 硫붿씤 �럹�씠吏�濡� �씠�룞");
			
		}


	
		/* 푸드스토리 */
		
		@Autowired
		private FoodService fservice;
		
				
		//푸드스토리 글 상세보기
		@RequestMapping(value = "/foodStory", method = RequestMethod.GET)
		public void fStoryPageGET(int fBno, Model model) {
		
		model.addAttribute("pageInfo", fservice.getPageF(fBno));
		logger.info("푸드스토리 글 상세보기");
					
				}
		
		//푸드스토리 글 목록 페이지로 이동(페이징)
		@RequestMapping(value = "/foodStoryList", method = RequestMethod.GET)
		public void fStoryListPageGET(Model model, FoodVO fv, Criteria cri) {
			model.addAttribute("list", fservice.getListPagingF(cri));
		
			int total = fservice.getTotalF();
			PageMakeDTO pageMake = new PageMakeDTO(cri, total);
			model.addAttribute("pageMaker", pageMake);
		logger.info("푸드스토리 글 목록 페이지로 이동");
							
						}

		
		
			
					
				
				
	
			
					
					
					
				
				
				
			
		
		
		//푸드스토리 글 작성 페이지로 이동
		@RequestMapping(value = "/fsReg", method = RequestMethod.GET)
		public void fStoryRegPageGET() {
							
		logger.info("글 작성 페이지로 이동");
							
						}
		
		
		//푸드스토리 글 작성
				@PostMapping("/fsReg")
				public String fsRegPOST(FoodVO fv,  Model model, RedirectAttributes rttr) {
					
					model.addAttribute("list", fservice.getListF());
					fservice.registerF(fv);
					rttr.addFlashAttribute("result", "register success");
					return "redirect:/board/foodStoryList";
				}
	
		//푸드스토리 글 수정 페이지 진입
        @RequestMapping(value = "/fsMod", method = RequestMethod.GET)
        public void fStoryModPageGET(int fBno, Model model) {
		
        	model.addAttribute("pageInfo", fservice.getPageF(fBno));
		logger.info("글 수정 페이지 진입");
									
								}
        
      //푸드스토리 글 수정
        @PostMapping("/modifyF")
        public String fsModPOST(FoodVO fv, Model model, RedirectAttributes rttr) {
        	fservice.modifyF(fv);
        	
        	model.addAttribute("list", fservice.getListF());
        	rttr.addFlashAttribute("result", "modify success");
        	return "redirect:/board/foodStoryList";
        }
        
        
      //푸드스토리 글 삭제
  		@PostMapping("/deleteF")
  		public String FsDeletePOST(int fBno, RedirectAttributes rttr) {
  			
  			fservice.deleteF(fBno);
  			
  			rttr.addFlashAttribute("result", "delete success");
  			
  			return "redirect:/board/foodStoryList";
  		}
			
       
  		
  		@Autowired
		private QnaService qservice;
    	

    
		
		//문의사항 상세보기 페이지
		@RequestMapping(value = "/qna", method = RequestMethod.GET)
		public void qnaGET(int qBno, Model model) {
		
			model.addAttribute("pageInfo", qservice.getPageQ(qBno));	
		logger.info("문의사항 상세보기 페이지로 이동");
									
								}
		
		
		
		//문의사항 리스트(페이징 적용)
		@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
		public void qnaListGET(Model model, QnaVO qv, Criteria cri) {
		
	
		model.addAttribute("list", qservice.getListPagingQ(cri));
		int total = qservice.getTotalQ();
		PageMakeDTO pageMake = new PageMakeDTO(cri, total);
		model.addAttribute("pageMaker", pageMake);
			
		logger.info("문의사항 리스트");
							
						}
		
		
		
		//문의사항 작성 페이지
		@RequestMapping(value = "/qnaReg", method = RequestMethod.GET)
	     public void qnaRegGET() {
									
		logger.info("문의사항 작성 페이지");
	
		
		}
		
		
		//문의사항 작성
		@PostMapping("/qnaReg")
		public String qBoardRegistPOST(QnaVO qv, Model model, RedirectAttributes rttr) {
		
			
		model.addAttribute("list", qservice.getListQ());
			
		log.info("QnaVO : " + qv);
		qservice.registerQ(qv);
		rttr.addFlashAttribute("result", "register success");
		
		return "redirect:/board/qnaList";
				}
		
		//문의사항 수정 페이지
				@RequestMapping(value = "/qnaMod", method = RequestMethod.GET)
			     public void qnaModGET(Model model, int qBno) {
				model.addAttribute("pageInfo", qservice.getPageQ(qBno));				
				logger.info("문의사항 수정 페이지");						
								}
				//문의사항 수정 
				@PostMapping("/modifyQ")
				public String qnaModPOST(QnaVO qv, Model model, RedirectAttributes rttr) {
					
				qservice.modifyQ(qv);
				
				rttr.addFlashAttribute("result", "modify success");
				model.addAttribute("list", qservice.getListQ());
				
				return "redirect:/board/qnaList";
				}	
				
				
				//삭제
				@PostMapping("/deleteQ")
				public String QnaDeletePOST(int qBno, RedirectAttributes rttr) {
					
					qservice.deleteQ(qBno);
					
					rttr.addFlashAttribute("result", "delete success");
					
					return "redirect:/board/qnaList";	
   
				}
				/*
				
				@Autowired
				private EventService eservice;
			
				@RequestMapping(value = "/event", method = RequestMethod.GET)
				public void eventPageGET(int eBno, Model model) {
					
					model.addAttribute("pageInfo", eservice.getPageE(eBno));
					logger.info("�씠踰ㅽ듃 �긽�꽭 �럹�씠吏�濡� �씠�룞");
					
				}
				
				
				
				@RequestMapping(value = "/eventList", method = RequestMethod.GET)
				public void eventListPageGET(Model model) {
							
					logger.info("�씠踰ㅽ듃 紐⑸줉 �럹�씠吏�濡� �씠�룞");
					model.addAttribute("list", eservice.getListE());		
						}
				
				
			
				@RequestMapping(value = "/eventReg", method = RequestMethod.GET)
				public void eventregPageGET() {
									
				logger.info("�씠踰ㅽ듃 湲� �옉�꽦 �럹�씠吏�濡� �씠�룞");
									
					}
				
				
				
				@PostMapping("/enrollE")
				public String eventEnrollPOST(EventVO ev, RedirectAttributes rttr) {
					eservice.enrollE(ev);
					
					//湲� �벑濡� �븣由쇱갹 1�쉶�꽦�쑝濡� �뜲�씠�꽣 �쟾�떖
					rttr.addFlashAttribute("result", "register success");
					log.info("Eventvo : " + ev);
				
				return "redirect:/board/eventList";	
				
				}
				
				
				
				@RequestMapping(value = "/eventMod", method = RequestMethod.GET)
				public void eventDetPageGET(int eBno, Model model) {
				model.addAttribute("pageInfo", eservice.getPageE(eBno));
				logger.info("�씠踰ㅽ듃 湲� �닔�젙 �럹�씠吏�濡� �씠�룞");
											
							}
				
				
				@PostMapping("/modifyE")
				public String eventModPOST(EventVO ev, RedirectAttributes rttr) {
					
				eservice.modifyE(ev);
				
				rttr.addFlashAttribute("result", "modify success");
				
				return "redirect:/board/eventList";
				}	
				
			
				@PostMapping("/deleteE")
				public String eventDeletePOST(int eBno, RedirectAttributes rttr) {
					eservice.deleteE(eBno);
					rttr.addFlashAttribute("result", "delete success");
					return "redirect:/board/eventList";
					
				}
				
	*/
}
