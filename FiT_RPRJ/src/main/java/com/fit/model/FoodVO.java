package com.fit.model;

import java.sql.Date;

public class FoodVO {
	
	
	/*�뫖�뱶�뒪�넗由� �븘�씠�뵒*/
	private String userId;

	/*�뫖�뱶�뒪�넗由� 湲� 踰덊샇*/
	private int fBno;
	
	/*�뫖�뱶�뒪�넗由� 湲��젣紐�*/
	private String fTitle;
	
	/*�뫖�뱶�뒪�넗由� 湲� �궡�슜*/
	private String fContent;
	
	/*�뫖�뱶�뒪�넗由� 湲� �옉�꽦�씪*/
	private Date fReg;
	
	/*�뫖�뱶�뒪�넗由� 湲� 議고쉶�닔*/
	private int fHit;
	
	public String getfWrt() {
		return fWrt;
	}

	public void setfWrt(String fWrt) {
		this.fWrt = fWrt;
	}

	private String fWrt;
	
	/*�뫖�뱶�뒪�넗由� 泥⑤��뙆�씪*/
	private String fFile;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getfBno() {
		return fBno;
	}

	public void setfBno(int fBno) {
		this.fBno = fBno;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Date getfReg() {
		return fReg;
	}

	public void setfReg(Date fReg) {
		this.fReg = fReg;
	}

	public int getfHit() {
		return fHit;
	}

	public void setfHit(int fHit) {
		this.fHit = fHit;
	}

	public String getfFile() {
		return fFile;
	}

	public void setfFile(String fFile) {
		this.fFile = fFile;
	}

	@Override
	public String toString() {
		return "FoodVO [userId=" + userId + ", fBno=" + fBno + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fReg=" + fReg + ", fHit=" + fHit + ", fWrt=" + fWrt + ", fFile=" + fFile + "]";
	}

	
	

	
	
}
