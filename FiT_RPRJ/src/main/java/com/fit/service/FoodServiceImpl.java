package com.fit.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fit.mapper.FoodStoryMapper;
import com.fit.model.EventVO;
import com.fit.model.FoodVO;


@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	private FoodStoryMapper mapper;
	
	
	//푸드스토리 등록
	@Override
	public void registerF(FoodVO fv) {
		mapper.registerF(fv);
	}
	
	
	
	@Override 
	public List<FoodVO> getListF(){
		return mapper.getListF();
	}
	
	//푸드스토리 조회
	@Override
	public FoodVO getPageF(int fBno) {
	return mapper.getPageF(fBno);
	
	}
	
	
	//푸드스토리 삭제
	@Override
	public int deleteF(int fBno) {
		return mapper.deleteF(fBno);
	}
	
	//푸드스토리 조회
	@Override
	public int modifyF(FoodVO fv) {
		return mapper.modifyF(fv);
	}
	
}
