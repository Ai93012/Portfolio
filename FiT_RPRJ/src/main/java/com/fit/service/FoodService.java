package com.fit.service;




import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.EventVO;
import com.fit.model.FoodVO;
import com.fit.model.NoticeVO;


public interface FoodService {
	
	/*Ǫ�彺�丮 ���*/
	public void registerF(FoodVO fv);

	/*Ǫ�彺�丮 ���*/
	public List<FoodVO> getListF();
	
	/*Ǫ�彺�丮 ��ȸ*/
	public FoodVO getPageF(int fBno);
	
	/* Ǫ�彺�丮 ���� */
    public int deleteF(int fBno);
    
    /*Ǫ�彺�丮 ����*/
    public int modifyF(FoodVO fv);
    
	/*푸드스토리 목록보기(페이징 적용)*/
	public List<FoodVO> getListPagingF(Criteria cri);
	
	/*푸드스토리 게시물 총 갯수*/
	public int getTotalF();

	
}
