package com.fit.service;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.EventVO;

public interface EventService {
	public void register(EventVO event);
	public List<EventVO> getList(Criteria cri);
	public int getTotal(Criteria cri);
	public List<EventVO> getMainEvent();
	public EventVO get(Long bno);
}