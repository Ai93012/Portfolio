package com.fit.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fit.mapper.BoardAttachMapper;
import com.fit.mapper.EventMapper;
import com.fit.model.BoardAttachVO;
import com.fit.model.Criteria;
import com.fit.model.EventVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EventServiceImpl implements EventService {
	private EventMapper mapper;
	
	private BoardAttachMapper attachMapper;
	
	@Transactional
	@Override
	public List<EventVO> getList(Criteria cri) {
		log.info("get List with Criteria: " + cri);
//		return mapper.getListWithPaging(cri);
		List<EventVO> list = mapper.getListWithPaging2(cri);
		for(EventVO event : list) {
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
	public void register(EventVO event) {
		log.info("register..." + event);
		mapper.insertSelectKey(event);

		BoardAttachVO eFile = event.getBannerList().get(0);
		eFile.setKind("event");
		eFile.setBno(event.getBno());
		attachMapper.insert(eFile);
	}

	@Override
	public List<EventVO> getMainEvent() {
		log.info("getMainEvent");
		List<EventVO> list = mapper.getMainEvent();
		for(EventVO event : list) {
			event.setBannerList(attachMapper.findByBno("event", event.getBno()));
		}
		return list;  //12c 기능 이용
	}

	@Transactional
	@Override
	public EventVO get(Long bno) {
		log.info("get... " + bno);
		EventVO event = mapper.read(bno);
		event.setBannerList(attachMapper.findByBno("event", bno));
		return event;
	}
}