package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fit.mapper.QnaMapper;
import com.fit.model.Criteria;
import com.fit.model.NoticeVO;
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
	
	/*문의사항 목록(페이징)*/
	
	@Override
	public List<QnaVO> getListPagingQ(Criteria cri) {
		return mapper.getListPagingQ(cri);
	}
	
	/*���ǻ��� ��ȸ */
	@Override
	public QnaVO getPageQ(int qBno) {
		return mapper.getPageQ(qBno);
	}
	
	//���ǻ��� ����
	@Override
	public int deleteQ(int qBno) {
		return mapper.deleteQ(qBno);
	}
	
	//���ǻ��� ����
	@Override
	public int modifyQ(QnaVO qv) {
		return mapper.modifyQ(qv);
	}
	
	
	/*문의사항 게시물 총 갯수*/
	@Override
	public int getTotalQ() {
		return mapper.getTotalQ();
	}
	
}
