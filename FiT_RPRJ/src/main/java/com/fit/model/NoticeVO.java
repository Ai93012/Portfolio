package com.fit.model;

import java.sql.Date;

public class NoticeVO {
	
	//�ۼ���(������) ���̵�
	private String aId;

	
	//�Խ��� ��ȣ
	private int nBno;
	
	//�Խ��� ����
	private String nTitle;
	
	//�Խ��� ����
	private String nContent;
	
	//�ۼ��� �����
	private Date nReg;
	
	//��ȸ��
	private int nHit;
	
	//÷������
	private String nFile;
	
	private String nWrt;
	
	

	public String getaId() {
		return aId;
	}

	public void setaId(String aId) {
		this.aId = aId;
	}

	public int getnBno() {
		return nBno;
	}

	public void setnBno(int nBno) {
		this.nBno = nBno;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnReg() {
		return nReg;
	}

	public void setnReg(Date nReg) {
		this.nReg = nReg;
	}

	public int getnHit() {
		return nHit;
	}

	public void setnHit(int nHit) {
		this.nHit = nHit;
	}

	public String getnFile() {
		return nFile;
	}

	public void setnFile(String nFile) {
		this.nFile = nFile;
	}

	public String getnWrt() {
		return nWrt;
	}

	public void setnWrt(String nWrt) {
		this.nWrt = nWrt;
	}

	@Override
	public String toString() {
		return "NoticeVO [aId=" + aId + ", nBno=" + nBno + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nReg="
				+ nReg + ", nHit=" + nHit + ", nFile=" + nFile + ", nWrt=" + nWrt + "]";
	}
	
	

	
	
	
}
