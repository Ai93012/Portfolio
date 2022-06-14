package com.fit.mapper;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.ProductVO;

public interface ProductMapper {
	void insert(ProductVO product);
	List<ProductVO> getList(Criteria cri);
	int getTotalCount(Criteria cri);
	void insertSelectKey(ProductVO product);
	ProductVO read(Long num);
}