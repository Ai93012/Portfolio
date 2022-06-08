package com.fit.mapper;

import java.util.List;


import com.fit.model.QnaVO;

public interface QnaMapper {

	//이벤트 게시판 등록
	public void registerQ(QnaVO qv);
	
	/*공지 목록*/
	public List<QnaVO> getListQ();
	
	/*공지 조회*/
	public QnaVO getPageQ(int qBno);
	
}
