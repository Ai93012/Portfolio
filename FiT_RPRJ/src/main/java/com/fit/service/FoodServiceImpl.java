package com.fit.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fit.mapper.FoodStoryMapper;
import com.fit.model.Criteria;
import com.fit.model.EventVO;
import com.fit.model.FoodVO;
import com.fit.model.NoticeVO;


@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	private FoodStoryMapper mapper;
	
	
	//Ǫ�彺�丮 ���
	@Override
	public void registerF(FoodVO fv) {
		mapper.registerF(fv);
	}
	
	
	
	@Override 
	public List<FoodVO> getListF(){
		return mapper.getListF();
	}
	
	//Ǫ�彺�丮 ��ȸ
	@Override
	public FoodVO getPageF(int fBno) {
	return mapper.getPageF(fBno);
	
	}
	
	
	//Ǫ�彺�丮 ����
	@Override
	public int deleteF(int fBno) {
		return mapper.deleteF(fBno);
	}
	
	//Ǫ�彺�丮 ��ȸ
	@Override
	public int modifyF(FoodVO fv) {
		return mapper.modifyF(fv);
	}
	
	/*푸드스토리 목록(페이징)*/
	
	@Override
	public List<FoodVO> getListPagingF(Criteria cri) {
		return mapper.getListPagingF(cri);
	}
	
	
	/*푸드스토리 게시물 총 갯수*/
	@Override
	public int getTotalF() {
		return mapper.getTotalF();
	}
	
}
