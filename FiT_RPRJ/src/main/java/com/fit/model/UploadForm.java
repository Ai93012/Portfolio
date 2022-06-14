package com.fit.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadForm {	// uploadForm의 input 값을 저장하는 객체
	private Long num;
	private String name;
	private int price;
	private int sale;
	private String detail;
	private String delivery;  // 배송정보
	private String writer;
	private int inventory;
	private String category;	// 카테고리
	private MultipartFile image1;	// input 태그 name="uploadFile"
	private MultipartFile image2;
	
	public ProductVO toProduct() {
		ProductVO product = new ProductVO();
		product.setName(name);
		product.setPrice(price);
		product.setSale(sale);
		product.setDetail(detail);
		product.setDelivery(delivery);
		product.setWriter(writer);
		product.setInventory(inventory);
		product.setCategory(category);
		
		return product;
	}
}	// Servlet 3.0에 추가된 파일 업로드 기능(MultipartFile 객체)을 이용