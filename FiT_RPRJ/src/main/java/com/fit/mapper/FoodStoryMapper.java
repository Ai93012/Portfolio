package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.FoodVO;
import com.fit.model.NoticeVO;

public interface FoodStoryMapper {

	/* 푸드스토리 등록 */
	public void registerF(FoodVO fv);
	
	/*푸드스토리 목록*/
	public List<FoodVO> getListF();
	
	
	/*푸드스토리 조회*/
	public FoodVO getPageF(int fBno);
	
	
	/*푸드스토리 삭제*/
	public int deleteF(int fBno);
	
	
	/*푸드스토리 수정*/
	public int modifyF(FoodVO fv);
	
	
	
}
