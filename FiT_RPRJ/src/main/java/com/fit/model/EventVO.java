package com.fit.model;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class EventVO {
	private String aid;
	private String title;
	private Long bno;
	private String content;
	private Date reg;
	private int hit;
	private List<BoardAttachVO> bannerList;
}
