package com.fit.mapper;

import java.util.List;


import com.fit.model.QnaVO;

public interface QnaMapper {

	//�̺�Ʈ �Խ��� ���
	public void registerQ(QnaVO qv);
	
	/*���� ���*/
	public List<QnaVO> getListQ();
	
	/*���� ��ȸ*/
	public QnaVO getPageQ(int qBno);
	
}
