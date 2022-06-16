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

	
	/*공지사항 등록*/
	@Override
	public void registerN(NoticeVO nv) {
		
		mapper.registerN(nv);
	}
	
	/*공지사항 목록*/
	
	@Override
	public List<NoticeVO> getListN() {
		return mapper.getListN();
	}
	
	/*공지사항 목록(페이징)*/
	
	@Override
	public List<NoticeVO> getListPaging(Criteria cri) {
		return mapper.getListPagingN(cri);
	}
	
	
	/*공지사항 상세보기*/
	@Override
	public NoticeVO getPageN(int nBno) {
		return mapper.getPageN(nBno);
	}
	
	/*공지사항 수정*/
	@Override
	public int modifyN(NoticeVO nv) {
		return mapper.modifyN(nv);
		
	}
	
	/*공지사항 삭제*/
	@Override
	public int deleteN(int nBno) {
		return mapper.deleteN(nBno);
	}
	
	/*공지사항 게시물 총 갯수*/
	@Override
	public int getTotalN() {
		return mapper.getTotalN();
	}
	
	
	
	}

