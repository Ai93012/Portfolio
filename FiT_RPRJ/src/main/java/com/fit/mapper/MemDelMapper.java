package com.fit.mapper;

import java.util.List;

import com.fit.model.MemAddressVO;

public interface MemDelMapper {

	//배송지 등록
	public void addMemDel(MemAddressVO memad);
	
	/* 배송지 목록 조회 */
	public List<MemAddressVO> getList();

	

}
