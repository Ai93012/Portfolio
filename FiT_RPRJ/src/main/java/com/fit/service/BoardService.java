package com.fit.service;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NoticeVO;

public interface BoardService {

	/*공지사항 등록*/
	public void registerN(NoticeVO nv);
	
	/*공지사항 목록보기*/
	public List<NoticeVO> getListN();
	
	/*공지사항 목록보기(페이징 적용)*/
	public List<NoticeVO> getListPaging(Criteria cri);
	
	/*공지사항 상세보기*/
	public NoticeVO getPageN(int nBno);
	
	/*공지사항 수정*/
	public int modifyN(NoticeVO nv);
	
	/*공지사항 삭제*/
	public int deleteN(int nBno);
	
	/*공지사항 게시물 총 갯수*/
	public int getTotalN();

	
	
}
