package com.fit.model;

import java.sql.Date;

public class FoodVO {
	
	
	//�ۼ���(ȸ��) ���̵�
	private String userId;

	//�Խ��� ��ȣ
	private int fBno;
	
	//�Խ��� ����
	private String fTitle;
	
	//�Խ��� ����
	private String fContent;
	
	//�ۼ��� �����
	private Date fReg;
	
	//��ȸ��
	private int fHit;
	
	//÷������
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
		return "foodVO [userId=" + userId + ", fBno=" + fBno + ", fTitle=" + fTitle + ", fContent=" + fContent
				+ ", fReg=" + fReg + ", fHit=" + fHit + ", fFile=" + fFile + "]";
	}
	

	
	
}
