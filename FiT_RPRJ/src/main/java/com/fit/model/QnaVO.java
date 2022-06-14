package com.fit.model;

import java.sql.Date;

public class QnaVO {

	//작성자(관리자 아이디)
		private String aId;

		
		//작성자(사용자 아이디)
		private String userId;
		
		//작성자 (관리자 이름)
		private String aName;
		
		//작성자 (사용자 이름)
		private String userName;
		
		//문의 게시판 제목
		private String qTitle;
		
		//문의 게시판 내용
		private String qContent;
		
		//작성일
		private Date qReg;
		
		//게시판 번호
		private int qBno;
		
		
		//조회수
		private int qHit;

		
		private String qWrt;
		
		

	public String getqWrt() {
			return qWrt;
		}


		public void setqWrt(String qWrt) {
			this.qWrt = qWrt;
		}


	public String getaId() {
		return aId;
	}


	public void setaId(String aId) {
		this.aId = aId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getaName() {
		return aName;
	}


	public void setaName(String aName) {
		this.aName = aName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getqTitle() {
		return qTitle;
	}


	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}


	public String getqContent() {
		return qContent;
	}


	public void setqContent(String qContent) {
		this.qContent = qContent;
	}


	public Date getqReg() {
		return qReg;
	}


	public void setqReg(Date qReg) {
		this.qReg = qReg;
	}


	public int getqBno() {
		return qBno;
	}


	public void setqBno(int qBno) {
		this.qBno = qBno;
	}


	public int getqHit() {
		return qHit;
	}


	public void setqHit(int qHit) {
		this.qHit = qHit;
	}


	@Override
	public String toString() {
		return "QnaVO [aId=" + aId + ", userId=" + userId + ", aName=" + aName + ", userName=" + userName + ", qTitle="
				+ qTitle + ", qContent=" + qContent + ", qReg=" + qReg + ", qBno=" + qBno + ", qHit=" + qHit + ", qWrt="
				+ qWrt + "]";
	}



	
	
	
}
