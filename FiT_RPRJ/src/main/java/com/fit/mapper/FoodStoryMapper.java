package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.FoodVO;
import com.fit.model.NoticeVO;

public interface FoodStoryMapper {

	/* Food 스토리 작성*/
	public void registerF(FoodVO fv);
	
	/*Ǫ�彺�丮 ���*/
	public List<FoodVO> getListF();
	
	public List<FoodVO> getListPagingF(Criteria cri);
	
	/*Ǫ�彺�丮 ��ȸ*/
	public FoodVO getPageF(int fBno);
	
	
	/*Ǫ�彺�丮 ����*/
	public int deleteF(int fBno);
	
	
	/*Ǫ�彺�丮 ����*/
	public int modifyF(FoodVO fv);
	
	
	
	/*푸드스토리 게시물 글 총 갯수*/
	public int getTotalF();
	
	
}
