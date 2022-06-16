package com.fit.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fit.mapper.BoardAttachMapper;
import com.fit.mapper.NewEventMapper;
import com.fit.model.BoardAttachVO;
import com.fit.model.Criteria;
import com.fit.model.NewEventVO;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class NewEventServiceImpl implements NewEventService {
	private NewEventMapper mapper;
	
	private BoardAttachMapper attachMapper;
	
	@Transactional
	@Override
	public List<NewEventVO> getList(Criteria cri) {
		log.info("get List with Criteria: " + cri);
//		return mapper.getListWithPaging(cri);
		List<NewEventVO> list = mapper.getListWithPaging2(cri);
		for(NewEventVO event : list) {
			event.setBannerList(attachMapper.findByBno("event", event.getBno()));
		}
		return list;  //12c 기능 이용
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Transactional
	@Override
	public void register(NewEventVO event) {
		log.info("register..." + event);
		mapper.insertSelectKey(event);

		BoardAttachVO eFile = event.getBannerList().get(0);
		eFile.setKind("event");
		eFile.setBno(event.getBno());
		attachMapper.insert(eFile);
	}

	@Override
	public List<NewEventVO> getMainEvent() {
		log.info("getMainEvent");
		List<NewEventVO> list = mapper.getMainEvent();
		for(NewEventVO event : list) {
			event.setBannerList(attachMapper.findByBno("event", event.getBno()));
		}
		return list;  //12c 기능 이용
	}

	@Transactional
	@Override
	public NewEventVO get(Long bno) {
		log.info("get... " + bno);
		NewEventVO event = mapper.read(bno);
		event.setBannerList(attachMapper.findByBno("event", bno));
		return event;
	}
}