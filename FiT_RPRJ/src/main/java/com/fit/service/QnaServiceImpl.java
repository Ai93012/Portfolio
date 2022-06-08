package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fit.mapper.QnaMapper;
import com.fit.model.QnaVO;


@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	private QnaMapper mapper;
	
	@Override
	public void registerQ(QnaVO qv) {
		mapper.registerQ(qv);
	}
	
	@Override
	public List<QnaVO> getListQ(){
	return mapper.getListQ();
	
	}
	
	/*문의사항 조회 */
	@Override
	public QnaVO getPageQ(int qBno) {
		return mapper.getPageQ(qBno);
	}
	
}
