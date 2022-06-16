package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NewEventVO;


public interface NewEventMapper {
	public List<NewEventVO> getListWithPaging2(Criteria cri);
	public int getTotalCount(Criteria cri);
	public void insertSelectKey(NewEventVO event);
	public List<NewEventVO> getMainEvent();
	public NewEventVO read(Long bno);
}