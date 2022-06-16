package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.QnaVO;

public interface QnaMapper {

	/*���ǻ��� �Խ��� ���*/
	public void registerQ(QnaVO qv);
	
	/*���ǻ��� ���*/
	public List<QnaVO> getListQ();
	
	public List<QnaVO> getListPagingQ(Criteria cri);
	
	/*���ǻ��� ��ȸ*/
	public QnaVO getPageQ(int qBno);
	
	/*���ǻ��� ����*/
	public int deleteQ(int qBno);
	
	/*���ǻ��� ����*/
	public int modifyQ(QnaVO qv);
	
	/*푸드스토리 게시물 글 총 갯수*/
	public int getTotalQ();
	
}
