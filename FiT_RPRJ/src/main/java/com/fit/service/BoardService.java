package com.fit.service;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NoticeVO;

public interface BoardService {

	/*공지 등록*/
	public void registerN(NoticeVO nv);
	
	/*공지 목록*/
	public List<NoticeVO> getListN();
	
	/*공지 목록(페이징)*/
	public List<NoticeVO> getListPaging(Criteria cri);
	
	/*공지 조회*/
	public NoticeVO getPageN(int nBno);
	
	/*공지 수정*/
	public int modifyN(NoticeVO nv);
	
	/*공지 삭제*/
	public int deleteN(int nBno);
	
	
	/*게시판 총 갯수*/
	public int getTotal();
	
	
}
