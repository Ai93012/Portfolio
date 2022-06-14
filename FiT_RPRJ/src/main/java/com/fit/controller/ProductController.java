package com.fit.controller;




import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit.model.Criteria;
import com.fit.model.PageDTO;
import com.fit.model.ProductVO;
import com.fit.model.UploadForm;
import com.fit.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@AllArgsConstructor
@Log4j
public class ProductController {
	private ProductService productService;
	
	@GetMapping("/register")
	public void register(Model model) {
		log.info("/product/register...");
		
	}
	
	@PostMapping("/register")
	public String registerAction(UploadForm form, RedirectAttributes rttr) {
		log.info("registerAction..."+ form);
		productService.register(form);
		
		return "redirect:/product/list";
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list: " +cri);
		List<ProductVO> list = productService.getList(cri);
				
			model.addAttribute("list",list);
			int total =productService.getTotal(cri);
			model.addAttribute("pageMaker", new PageDTO(cri,total));
	}

	@GetMapping("/get")
	public void get(Long num, Model model) {
		log.info("get: " + num);
		ProductVO product = productService.read(num);
		
		model.addAttribute("product", product);
	}
}
