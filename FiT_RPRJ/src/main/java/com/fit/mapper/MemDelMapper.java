package com.fit.mapper;

import java.util.List;

import com.fit.model.MemAddressVO;

public interface MemDelMapper {

	//����� ���
	public void addMemDel(MemAddressVO memad);
	
	/* ����� ��� ��ȸ */
	public List<MemAddressVO> getList();

	

}
