package com.fit.service;




import java.util.List;

import com.fit.model.EventVO;
import com.fit.model.FoodVO;


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
	
}
