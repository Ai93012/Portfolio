package com.fit.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadForm2 {
	private String aid;
	private String title;
	private Long bno;
	private String content;
	private Date reg;
	private int hit;
	private MultipartFile uploadFile;
}