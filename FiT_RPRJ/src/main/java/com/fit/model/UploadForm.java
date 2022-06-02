package com.fit.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadForm {	// uploadForm의 input 값을 저장하는 객체
	private String desc;	// input 태그 name="desc"
	private MultipartFile[] uploadFile;	// input 태그 name="uploadFile"
}	// Servlet 3.0에 추가된 파일 업로드 기능(MultipartFile 객체)을 이용
