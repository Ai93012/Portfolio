package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.FoodVO;
import com.fit.model.NoticeVO;

public interface FoodStoryMapper {

	/* Ǫ�彺�丮 ��� */
	public void registerF(FoodVO fv);
	
	/*Ǫ�彺�丮 ���*/
	public List<FoodVO> getListF();
	
	
	/*Ǫ�彺�丮 ��ȸ*/
	public FoodVO getPageF(int fBno);
	
	
	/*Ǫ�彺�丮 ����*/
	public int deleteF(int fBno);
	
	
	/*Ǫ�彺�丮 ����*/
	public int modifyF(FoodVO fv);
	
	
	
}
