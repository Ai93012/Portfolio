package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.BoardMapper;
import com.fit.model.Criteria;
import com.fit.model.NoticeVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	@Override
	public void registerN(NoticeVO nv) {
		
		mapper.registerN(nv);
	}
	
	//���� ���
	
	@Override
	public List<NoticeVO> getListN() {
		return mapper.getListN();
	}
	
	//���� ���(����¡)
	
	@Override
	public List<NoticeVO> getListPaging(Criteria cri) {
		return mapper.getListPaging(cri);
	}
	
	
	/*���� ��ȸ */
	@Override
	public NoticeVO getPageN(int nBno) {
		return mapper.getPageN(nBno);
	}
	
	/*���� ����*/
	@Override
	public int modifyN(NoticeVO nv) {
		return mapper.modifyN(nv);
		
	}
	
	/*���� ����*/
	@Override
	public int deleteN(int nBno) {
		return mapper.deleteN(nBno);
	}
	
	/*���� �Խ��� �� ����*/
	@Override
	public int getTotal() {
		return mapper.getTotal();
	}
	
	@Override
	public int upViewCount(int nBno) {
		return mapper.upViewCount(nBno);
	}
	
	}

