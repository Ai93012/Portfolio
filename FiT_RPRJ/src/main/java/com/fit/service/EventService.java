package com.fit.service;

import java.util.List;

import com.fit.model.EventVO;

public interface EventService {
	
	//�Խ��� ���
	public void enrollE(EventVO ev);

	//�Խ��� ���
	public List<EventVO> getListE();
	
	//�Խñ� ����ȸ
	public EventVO getPageE(int eBno);

	//�Խ��� ����
	public int modifyE(EventVO ev);
	
	/* �Խ��� ���� */
    public int deleteE(int eBno);
	
}
