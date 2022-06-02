package com.fit.service;

import java.util.List;

import com.fit.model.Criteria;
import com.fit.model.ProductAttachVO;
import com.fit.model.ProductVO;

public interface ProductService {

	List<ProductVO> getList(Criteria cri);

	int getTotal(Criteria cri);

	List<ProductAttachVO> getAttachList(Long pid);

}
