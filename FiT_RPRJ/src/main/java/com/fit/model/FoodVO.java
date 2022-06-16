package com.fit.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class FoodVO {
	
	
	
	private String userId;


	private int fBno;
	

	private String fTitle;
	

	private String fContent;
	
	private Date fReg;
	
	private int fHit;
	
	private String fWrt;

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

	public String getfWrt() {
		return fWrt;
	}

	public void setfWrt(String fWrt) {
		this.fWrt = fWrt;
	}

	@Override
	public String toString() {
		return "FoodVO [userId=" + userId + ", fBno=" + fBno + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fReg=" + fReg + ", fHit=" + fHit + ", fWrt=" + fWrt + "]";
	}
	
	
	

	
	
}
