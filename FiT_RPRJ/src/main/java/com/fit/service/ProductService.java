package com.fit.service;

import java.util.List;

import com.fit.model.BoardAttachVO;
import com.fit.model.Criteria;
import com.fit.model.ProductVO;
import com.fit.model.UploadForm;

public interface ProductService {

	List<ProductVO> getList(Criteria cri);

	int getTotal(Criteria cri);

	List<BoardAttachVO> getAttachList(Long pid);

	void register(UploadForm form);

	ProductVO read(Long num);
}
