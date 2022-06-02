package com.fit.model;

import lombok.Data;

// 첨부파일에 대한 정보를 저장하는 빈

@Data
public class AttachFileDTO {
	private String fileName;	// 원래 파일이름
	private String uploadPath;	// 저장 경로 (yyyy/MM/dd)
	private String uuid;		// UUID 값
	private boolean image;		// 이미지 여부
}
