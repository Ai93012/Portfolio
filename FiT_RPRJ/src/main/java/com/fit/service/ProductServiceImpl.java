package com.fit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fit.model.Criteria;
import com.fit.model.ProductAttachVO;
import com.fit.model.ProductVO;



@Service
public class ProductServiceImpl implements ProductService {

	@Override
	public List<ProductVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductAttachVO> getAttachList(Long pid) {
		// TODO Auto-generated method stub
		return null;
	}

}
