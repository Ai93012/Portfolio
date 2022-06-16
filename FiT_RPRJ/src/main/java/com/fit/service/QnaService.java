package com.fit.service;




import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.NoticeVO;
import com.fit.model.QnaVO;

public interface QnaService {
	
	/*���ǻ��� ���*/
	public void registerQ(QnaVO qv);

	/*���ǻ��� ���*/
	public List<QnaVO> getListQ();
	
	public List<QnaVO> getListPagingQ(Criteria cri);
	
	/*���ǻ��� ��ȸ*/
	public QnaVO getPageQ(int qBno);
	
	/*���ǻ��� ���� */
    public int deleteQ(int qBno);
    
    /*���ǻ��� �� ����*/
    public int modifyQ(QnaVO qv);
    

	public int getTotalQ();
	
	
}
