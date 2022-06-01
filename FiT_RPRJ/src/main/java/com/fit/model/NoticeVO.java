package com.fit.model;

import java.sql.Date;

public class NoticeVO {
	
	//작성자(관리자) 아이디
	private String aId;

	
	//게시판 번호
	private int nBno;
	
	//게시판 제목
	private String nTitle;
	
	//게시판 내용
	private String nContent;
	
	//작성글 등록일
	private Date nReg;
	
	//조회수
	private int nHit;
	
	//첨부파일
	private String nFile;

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

	@Override
	public String toString() {
		return "NoticeVO [aId=" + aId + ", nBno=" + nBno + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nReg="
				+ nReg + ", nHit=" + nHit + ", nFile=" + nFile + "]";
	}

	
	
	
}
