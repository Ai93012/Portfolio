package com.fit.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fit.model.ReplyDTO;
import com.fit.service.ReplyService;

import oracle.jdbc.proxy.annotation.Post;

/**
 * Handles requests for the application home page.
 */
@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	private ReplyService rservice;
	
	@PostMapping("/regReply")
	public void registerReplyPOST(ReplyDTO dto) {
	rservice.regReply(dto);
	}
	
	

	
}
