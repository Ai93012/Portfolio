package com.fit.mapper;

import java.util.List;


import com.fit.model.QnaVO;

public interface QnaMapper {

	/*문의사항 게시판 등록*/
	public void registerQ(QnaVO qv);
	
	/*문의사항 목록*/
	public List<QnaVO> getListQ();
	
	/*문의사항 조회*/
	public QnaVO getPageQ(int qBno);
	
	/*문의사항 삭제*/
	public int deleteQ(int qBno);
	
	/*문의사항 수정*/
	public int modifyQ(QnaVO qv);
	
}
