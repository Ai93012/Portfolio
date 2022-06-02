package com.fit.model;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ProductVO {
	private Long pNum;
	private String pName;
	private int pPrice;
	private int pSale;
	private ProductAttachVO pImage1;
	private ProductAttachVO pImage2;
	private String pDetail;
	private Date pReg;
	private Date pMode;
	private String ald;
	private int pInventory;
	private String pCategory;
	private int pReadCount;	//조회수
	public void setAttachList(List<ProductAttachVO> alist) {
		// TODO Auto-generated method stub
		
	}
}
