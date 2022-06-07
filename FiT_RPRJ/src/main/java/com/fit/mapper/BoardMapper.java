package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NoticeVO;

public interface BoardMapper {

	/* ���� ��� */
	public void registerN(NoticeVO nv);
	
	/*���� ���*/
	public List<NoticeVO> getListN();
	
	/*���� ���(������ ����)*/
	public List<NoticeVO> getListPaging(Criteria cri);
	
	
	/*���� ��ȸ*/
	public NoticeVO getPageN(int nBno);
	
	/*���� ����*/
	public int modifyN(NoticeVO nv);
	
	/*���� ����*/
	public int deleteN(int nBno);
	
	
	/*���� �Խ��� �� ���� */
	
	public int getTotal();
	
	
	/*조회수*/

	public int upViewCount(int nBno);
	
	
	
}
