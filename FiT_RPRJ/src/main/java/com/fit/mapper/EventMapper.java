package com.fit.mapper;

import java.util.List;

import com.fit.model.EventVO;

public interface EventMapper {

	
	//�̺�Ʈ �Խ��� ���
	public void enrollE(EventVO vo);
	
	/*�̺�Ʈ �Խ��� ���*/
	public List<EventVO> getListE();
	
	/*�̺�Ʈ �Խ��� ��ȸ*/
	public EventVO getPageE(int eBno);
	
	/*�̺�Ʈ �Խ��� ���� */
	public int modifyE(EventVO ev);
	
	/*�Խ��� ����*/
	public int deleteE(int eBno);
	
}
