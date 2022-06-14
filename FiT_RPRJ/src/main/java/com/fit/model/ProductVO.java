package com.fit.model;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ProductVO {
	private Long num;
	private String name;
	private int price;
	private int sale;
	private String detail;
	private String delivery;  // 배송정보
	private Date regDate;
	private Date modDate;
	private String writer;
	private int inventory;
	private String category;	// 카테고리
	private int readCount;	//조회수

	private List<BoardAttachVO> attachList;
//	private BoardAttachVO pImage2;
}
