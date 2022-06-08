package com.fit.service;




import java.util.List;


import com.fit.model.QnaVO;

public interface QnaService {
	
	/*문의사항 등록*/
	public void registerQ(QnaVO qv);

	/*문의사항 목록*/
	public List<QnaVO> getListQ();
	
	/*문의사항 조회*/
	public QnaVO getPageQ(int qBno);
	
	
}
