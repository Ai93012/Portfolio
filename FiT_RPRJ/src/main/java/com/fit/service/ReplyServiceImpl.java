package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fit.mapper.QnaMapper;
import com.fit.mapper.ReplyMapper;
import com.fit.model.QnaVO;
import com.fit.model.ReplyDTO;


@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyMapper mapper;

	/*댓글 등록*/
	@Override
	public int regReply(ReplyDTO dto) {
		int result = mapper.regReply(dto);
			
		return result;
		
	}
	
}
