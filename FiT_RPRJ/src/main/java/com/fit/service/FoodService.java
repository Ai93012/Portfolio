package com.fit.service;




import java.util.List;

import com.fit.model.EventVO;
import com.fit.model.FoodVO;


public interface FoodService {
	
	/*푸드스토리 등록*/
	public void registerF(FoodVO fv);

	/*푸드스토리 목록*/
	public List<FoodVO> getListF();
	
	/*푸드스토리 조회*/
	public FoodVO getPageF(int fBno);
	
	/* 푸드스토리 삭제 */
    public int deleteF(int fBno);
    
    /*푸드스토리 수정*/
    public int modifyF(FoodVO fv);
	
}
