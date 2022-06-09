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
	
	
	//�̺�Ʈ ���
	@Override
	public void enrollE(EventVO ev) {
		mapper.enrollE(ev);
	}
	
	
	//�̺�Ʈ ��Ϻ���
	@Override
	public List<EventVO>getListE(){
		return mapper.getListE();
	}
	
	
	//�̺�Ʈ �󼼺���
	@Override
	public EventVO getPageE(int eBno) {
	return mapper.getPageE(eBno);
	
	}
	
	
	//�̺�Ʈ ����
	@Override
	public int modifyE(EventVO ev) {
		return mapper.modifyE(ev);
	}
	
	
	//�̺�Ʈ ���� 
	@Override
	public int deleteE(int eBno) {
		return mapper.deleteE(eBno);
	}
}
