package com.fit.mapper;

import java.util.List;


import com.fit.model.QnaVO;

public interface QnaMapper {

	/*���ǻ��� �Խ��� ���*/
	public void registerQ(QnaVO qv);
	
	/*���ǻ��� ���*/
	public List<QnaVO> getListQ();
	
	/*���ǻ��� ��ȸ*/
	public QnaVO getPageQ(int qBno);
	
	/*���ǻ��� ����*/
	public int deleteQ(int qBno);
	
	/*���ǻ��� ����*/
	public int modifyQ(QnaVO qv);
	
}
