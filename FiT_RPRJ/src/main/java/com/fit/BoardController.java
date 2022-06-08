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
import com.fit.model.NoticeVO;
import com.fit.model.PageMakeDTO;
import com.fit.model.QnaVO;
import com.fit.service.BoardService;
import com.fit.service.EventService;
import com.fit.service.FoodService;
import com.fit.service.QnaService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/board/*")
@Log4j
public class BoardController {
	
private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	


@Autowired
private BoardService bservice;




		//�������� �������� �̵�
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public void noticePageGET(int nBno, Model model) {
				
		model.addAttribute("pageInfo", bservice.getPageN(nBno));	
		logger.info("�������� �������� �̵�");
					
				}
		
		
		//���� ��� ������ ���� (����¡ ����)
		@GetMapping("/noticeList")
		public void noticeListPageGET(Model model, Criteria cri) {
			
			log.info("boardListGET");
			
			model.addAttribute("list", bservice.getListPaging(cri));
		
			int total = bservice.getTotal();
			
			PageMakeDTO pageMake = new PageMakeDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
		
		
		}
		
		
		
		//�������� �� �ۼ� �������� �̵�
		@RequestMapping(value = "/noticeReg", method = RequestMethod.GET)
		public void noticeRegPageGET() {
							
		logger.info("�������� �� �ۼ� �������� �̵�");
							
						}
		
		//�������� ���
		@PostMapping("/noticeReg")
		public String boardRegistPOST(NoticeVO nv, RedirectAttributes rttr) {
		log.info("NoticeVO : " + nv);
		bservice.registerN(nv);
		rttr.addFlashAttribute("result", "register success");
		
		return "redirect:/board/noticeList";
				}
		
		//�������� ���� �������� �̵�
		@RequestMapping(value = "/noticeMod", method = RequestMethod.GET)
		public void noticeDetPageGET(int nBno, Model model) {
			
			model.addAttribute("pageInfo", bservice.getPageN(nBno));
									
		logger.info("�������� ���� �������� �̵�");
									
								}
		//�������� ����
		@PostMapping("/noticeMod")
		public String noticeModPOST(NoticeVO nv, RedirectAttributes rttr) {
			bservice.modifyN(nv);
		rttr.addFlashAttribute("result", "modify success");
		return "redirect:/board/noticeList";
		}	
		
		//�������� ����
		@PostMapping("/deleteN")
		public String noticeDeletePOST(int nBno, RedirectAttributes rttr) {
			
			bservice.deleteN(nBno);
			
			rttr.addFlashAttribute("result", "delete success");
			
			return "redirect:/board/noticeList";
		}


		//�Խ��� ���� �������� �̵�
		@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
		public void boardMainPageGET() {
			
			logger.info("�Խ��� ���� �������� �̵�");
			
		}

		
		/* Ǫ�彺�丮 */
	
		@Autowired
		private FoodService fservice;
		
				
		//Ǫ�彺�丮 �� �������� �̵�
		@RequestMapping(value = "/foodStory", method = RequestMethod.GET)
		public void fStoryPageGET(int fBno, Model model) {
		
		model.addAttribute("pageInfo", fservice.getPageF(fBno));
		logger.info("Ǫ�彺�丮 �� �������� �̵�");
					
				}
		
		
		
		
		
		//Ǫ�彺�丮 ��� �������� �̵�
		@RequestMapping(value = "/foodStoryList", method = RequestMethod.GET)
		public void fStoryListPageGET(Model model) {
			
		model.addAttribute("list", fservice.getListF());
		logger.info("Ǫ�彺�丮 ��� �������� �̵�");
							
						}
		
		
		
		//Ǫ�彺�丮 �� �ۼ� �������� �̵�
		@RequestMapping(value = "/fsReg", method = RequestMethod.GET)
		public void fStoryRegPageGET() {
							
		logger.info("Ǫ�彺�丮 �� �ۼ� �������� �̵�");
							
						}
	
		//Ǫ�彺�丮 ���
		@PostMapping("/fsReg")
		public String fsRegPOST(FoodVO fv, RedirectAttributes rttr) {
			log.info("FoodVO : " + fv);
			fservice.registerF(fv);
			rttr.addFlashAttribute("result", "register success");
			return "redirect:/board/foodStoryList";
		}
		
	
		//Ǫ�彺�丮 �� ���� �������� �̵�
        @RequestMapping(value = "/fsMod", method = RequestMethod.GET)
        public void fStoryModPageGET() {
									
		logger.info("Ǫ�彺�丮 �� ���� �������� �̵�");
									
								}
			
        
      //Ǫ�彺�丮 ����
      		@PostMapping("/deleteF")
      		public String FsDeletePOST(int fBno, RedirectAttributes rttr) {
      			
      			fservice.deleteF(fBno);
      			
      			rttr.addFlashAttribute("result", "delete success");
      			
      			return "redirect:/board/foodStoryList";
      		}
        
        
        
        /*���ǻ���*/
        
    	@Autowired
		private QnaService qservice;
    	

    
		
		//���ǻ��� �� �������� �̵�
		@RequestMapping(value = "/qna", method = RequestMethod.GET)
		public void qnaGET(int qBno, Model model) {
		
			model.addAttribute("pageInfo", qservice.getPageQ(qBno));	
		logger.info("���ǻ��� �� �������� �̵�");
									
								}
		
		//���ǻ��� ��� �������� �̵�
		@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
		public void qnaListGET(Model model) {
		
		//���ǻ��� ��� ��Ÿ����
		model.addAttribute("list", qservice.getListQ());
			
		logger.info("���ǻ��� ��� �������� �̵�");
							
						}
		
		
	
		
		
		//���ǻ��� ���ۼ� �������� �̵�
		@RequestMapping(value = "/qnaReg", method = RequestMethod.GET)
	     public void qnaRegGET() {
									
		logger.info("���ǻ��� �� �ۼ� �������� �̵�");
		
		}
		
		
		//���ǻ��� ���
		@PostMapping("/qnaReg")
		public String qBoardRegistPOST(QnaVO qv, RedirectAttributes rttr) {
		log.info("QnaVO : " + qv);
		qservice.registerQ(qv);
		rttr.addFlashAttribute("result", "register success");
		
		return "redirect:/board/qnaList";
				}
		
		//���ǻ��� �� ���� �������� �̵�
				@RequestMapping(value = "/qnaMod", method = RequestMethod.GET)
			     public void qnaModGET() {
											
				logger.info("���ǻ��� �� ���� �������� �̵�");		
				
								}
				
				//���ǻ��� ����
				@PostMapping("/deleteQ")
				public String QnaDeletePOST(int qBno, RedirectAttributes rttr) {
					
					qservice.deleteQ(qBno);
					
					rttr.addFlashAttribute("result", "delete success");
					
					return "redirect:/board/qnaList";
				}
				
				@Autowired
				private EventService eservice;
				
				//�̺�Ʈ �� �������� �̵�
				@RequestMapping(value = "/event", method = RequestMethod.GET)
				public void eventPageGET(int eBno, Model model) {
					
					model.addAttribute("pageInfo", eservice.getPageE(eBno));
					logger.info("�̺�Ʈ �� �������� �̵�");
					
				}
				
				
				//�̺�Ʈ ��� �������� �̵�
				@RequestMapping(value = "/eventList", method = RequestMethod.GET)
				public void eventListPageGET(Model model) {
							
					logger.info("�̺�Ʈ ��� �������� �̵�");
					model.addAttribute("list", eservice.getListE());		
						}
				
				
				//�̺�Ʈ �ۼ��� �������� �̵�
				@RequestMapping(value = "/eventReg", method = RequestMethod.GET)
				public void eventregPageGET() {
									
				logger.info("�̺�Ʈ �� �ۼ� �������� �̵�");
									
					}
				
				
				//�̺�Ʈ ���ۼ�
				@PostMapping("/enrollE")
				public String eventEnrollPOST(EventVO ev, RedirectAttributes rttr) {
					eservice.enrollE(ev);
					
					//�� ��� �˸�â 1ȸ������ ������ ����
					rttr.addFlashAttribute("result", "register success");
					log.info("Eventvo : " + ev);
				
				return "redirect:/board/eventList";	
				
				}
				
				
				//�̺�Ʈ �� ���� �������� �̵�
				@RequestMapping(value = "/eventMod", method = RequestMethod.GET)
				public void eventDetPageGET() {
											
				logger.info("�̺�Ʈ �� ���� �������� �̵�");
											
							}
				
				//�̺�Ʈ �� ����
				@PostMapping("/deleteE")
				public String eventDeletePOST(int eBno, RedirectAttributes rttr) {
					eservice.deleteE(eBno);
					rttr.addFlashAttribute("result", "delete success");
					return "redirect:/board/eventlist";
					
				}
				
	
}


