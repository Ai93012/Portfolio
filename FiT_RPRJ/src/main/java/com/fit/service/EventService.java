package com.fit.service;

import java.util.List;

import com.fit.model.EventVO;

public interface EventService {
	
	//게시판 등록
	public void enrollE(EventVO ev);

	//게시판 목록
	public List<EventVO> getListE();
	
	//게시글 상세조회
	public EventVO getPageE(int eBno);

	//게시판 수정
	public int modifyE(EventVO ev);
	
	/* 게시판 삭제 */
    public int deleteE(int eBno);
	
}
