package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.EventVO;

public interface EventMapper {
	public List<EventVO> getListWithPaging2(Criteria cri);
	public int getTotalCount(Criteria cri);
	public void insertSelectKey(EventVO event);
	public List<EventVO> getMainEvent();
	public EventVO read(Long bno);
}