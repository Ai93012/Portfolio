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


//�Խ��� ���� �������� �̵�
		@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
		public void boardMainPageGET() {
			
			logger.info("�Խ��� ���� �������� �̵�");
			
		}


	//�̺�Ʈ �� �������� �̵�
		@RequestMapping(value = "/event", method = RequestMethod.GET)
		public void eventPageGET() {
			
			logger.info("�̺�Ʈ �� �������� �̵�");
			
		}
		
		
	//�̺�Ʈ ��� �������� �̵�
		@RequestMapping(value = "/eventList", method = RequestMethod.GET)
		public void eventListPageGET() {
					
			logger.info("�̺�Ʈ ��� �������� �̵�");
					
				}
		
		
		//�̺�Ʈ �ۼ��� �������� �̵�
		@RequestMapping(value = "/eventReg", method = RequestMethod.GET)
		public void eventregPageGET() {
							
		logger.info("�̺�Ʈ �� �ۼ� �������� �̵�");
							
			}
		
		//�̺�Ʈ �� ���� �������� �̵�
		@RequestMapping(value = "/eventMod", method = RequestMethod.GET)
		public void eventDetPageGET() {
									
		logger.info("�̺�Ʈ �� ���� �������� �̵�");
									
					}
		
		//�������� �������� �̵�
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public void noticePageGET(int nBno, Model model) {
		
			bservice.upViewCount(nBno);
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
				
		//Ǫ�彺�丮 �� �������� �̵�
		@RequestMapping(value = "/foodStory", method = RequestMethod.GET)
		public void fStoryPageGET() {
					
		logger.info("Ǫ�彺�丮 �� �������� �̵�");
					
				}
		
		//Ǫ�彺�丮 ��� �������� �̵�
		@RequestMapping(value = "/foodStoryList", method = RequestMethod.GET)
		public void fStoryListPageGET() {
							
		logger.info("Ǫ�彺�丮 ��� �������� �̵�");
							
						}
		
		
		//Ǫ�彺�丮 �� �ۼ� �������� �̵�
		@RequestMapping(value = "/fsReg", method = RequestMethod.GET)
		public void fStoryRegPageGET() {
							
		logger.info("Ǫ�彺�丮 �� �ۼ� �������� �̵�");
							
						}
	
		//Ǫ�彺�丮 �� ���� �������� �̵�
        @RequestMapping(value = "/fsMod", method = RequestMethod.GET)
        public void fStoryModPageGET() {
									
		logger.info("Ǫ�彺�丮 �� �ۼ� �������� �̵�");
									
								}
			
		
		//���ǻ��� �� �������� �̵�
		@RequestMapping(value = "/qna", method = RequestMethod.GET)
		public void qnaGET() {
									
		logger.info("���ǻ��� ��� �������� �̵�");
									
								}
		
		//���ǻ��� ��� �������� �̵�
		@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
		public void qnaListGET() {
							
		logger.info("���ǻ��� ��� �������� �̵�");
							
						}
		
		//���ǻ��� ���ۼ� �������� �̵�
		@RequestMapping(value = "/qnaReg", method = RequestMethod.GET)
	     public void qnaRegGET() {
									
		logger.info("���ǻ��� ���ۼ� �������� �̵�");
		
		}
		
		//���ǻ��� �� ���� �������� �̵�
				@RequestMapping(value = "/qnaMod", method = RequestMethod.GET)
			     public void qnaModGET() {
											
				logger.info("���ǻ��� �� ���� �������� �̵�");						
								}
	
}


