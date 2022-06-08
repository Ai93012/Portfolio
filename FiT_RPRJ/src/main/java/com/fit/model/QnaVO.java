package com.fit.model;

import java.sql.Date;

public class QnaVO {

	//�ۼ���(������ ���̵�)
	private String aId;

	
	//�ۼ���(����� ���̵�)
	private String userId;
	
	//�ۼ��� (������ �̸�)
	private String aName;
	
	//�ۼ��� (����� �̸�)
	private String userName;
	
	//���� �Խ��� ����
	private String qTitle;
	
	//���� �Խ��� ����
	private String qContent;
	
	//�ۼ���
	private Date qReg;
	
	//�Խ��� ��ȣ
	private int qBno;
	
	
	//��ȸ��
	private int qHit;


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
				+ qTitle + ", qContent=" + qContent + ", qReg=" + qReg + ", qBno=" + qBno + ", qHit=" + qHit + "]";
	}
	
	
	
}
