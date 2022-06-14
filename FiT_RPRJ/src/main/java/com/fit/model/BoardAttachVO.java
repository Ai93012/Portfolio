package com.fit.model;

import java.io.File;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName; //
	private boolean fileType;
	private String kind;
	private Long bno;
	
	public String getFileCallPath() {
		return uploadPath + File.separator + uuid + "_" + fileName;
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
			.queryParam("fileName", getFileCallPath());
		return builder.toUriString();
	}
}