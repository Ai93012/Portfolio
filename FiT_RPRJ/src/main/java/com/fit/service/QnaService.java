package com.fit.service;




import java.util.List;


import com.fit.model.QnaVO;

public interface QnaService {
	
	/*���ǻ��� ���*/
	public void registerQ(QnaVO qv);

	/*���ǻ��� ���*/
	public List<QnaVO> getListQ();
	
	/*���ǻ��� ��ȸ*/
	public QnaVO getPageQ(int qBno);
	
	
}
