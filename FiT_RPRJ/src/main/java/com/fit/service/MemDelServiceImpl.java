package com.fit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fit.mapper.MemDelMapper;
import com.fit.model.MemAddressVO;

@Service
public class MemDelServiceImpl implements MemDelService {

	@Autowired
	MemDelMapper memdelmapper;
	
	@Override
	public void addMemDel(MemAddressVO memad) throws Exception{
		memdelmapper.addMemDel(memad);
	}
	
	@Override
	public List<MemAddressVO> getList(){
		return memdelmapper.getList();
	}
	
}
