package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.EventMapper;
import com.fit.model.EventVO;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	private EventMapper mapper;
	
	
	//이벤트 등록
	@Override
	public void enrollE(EventVO ev) {
		mapper.enrollE(ev);
	}
	
	
	//이벤트 목록보기
	@Override
	public List<EventVO>getListE(){
		return mapper.getListE();
	}
	
	
	//이벤트 상세보기
	@Override
	public EventVO getPageE(int eBno) {
	return mapper.getPageE(eBno);
	
	}
	
	
	//이벤트 수정
	@Override
	public int modifyE(EventVO ev) {
		return mapper.modifyE(ev);
	}
	
	
	//이벤트 삭제 
	@Override
	public int deleteE(int eBno) {
		return mapper.deleteE(eBno);
	}
}
