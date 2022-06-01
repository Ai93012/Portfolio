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
	
	//공지 목록
	
	@Override
	public List<NoticeVO> getListN() {
		return mapper.getListN();
	}
	
	//공지 목록(페이징)
	
	@Override
	public List<NoticeVO> getListPaging(Criteria cri) {
		return mapper.getListPaging(cri);
	}
	
	
	/*공지 조회 */
	@Override
	public NoticeVO getPageN(int nBno) {
		return mapper.getPageN(nBno);
	}
	
	/*공지 수정*/
	@Override
	public int modifyN(NoticeVO nv) {
		return mapper.modifyN(nv);
		
	}
	
	/*공지 삭제*/
	@Override
	public int deleteN(int nBno) {
		return mapper.deleteN(nBno);
	}
	
	/*공지 게시판 총 갯수*/
	@Override
	public int getTotal() {
		return mapper.getTotal();
	}
	
	
	}

