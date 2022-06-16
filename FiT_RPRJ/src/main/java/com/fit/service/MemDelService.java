package com.fit.service;


import java.util.List;

import com.fit.model.MemAddressVO;


public interface MemDelService {

		public void addMemDel(MemAddressVO memad) throws Exception;
		
		/* 배송지 목록 */
		public List<MemAddressVO> getList();
		
	}
