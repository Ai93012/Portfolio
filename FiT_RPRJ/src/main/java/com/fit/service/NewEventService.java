package com.fit.service;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NewEventVO;

public interface NewEventService {
	public void register(NewEventVO event);
	public List<NewEventVO> getList(Criteria cri);
	public int getTotal(Criteria cri);
	public List<NewEventVO> getMainEvent();
	public NewEventVO get(Long bno);
}