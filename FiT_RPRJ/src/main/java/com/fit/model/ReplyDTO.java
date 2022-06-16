package com.fit.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ReplyDTO {
	private int replyId;
	
	private String aId;
	
	private Date qrDate;
	
	private String qrCon;
	


}
