package com.fit.model;

import java.sql.Date;

public class MemAddressVO {
	
	//배송받는 분 이름
	private String adrName;

	
	//배송지 우편번호
	private String delAdd1;
	
	//배송지 기본주소
	private String delAdd2;
	
	//배송지 상세주소
	private String delAdd3;
	
	//배송받는 분 핸드폰 번호
	private String phonNum;
	
	//배송메시지
	private String message;
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getAdrName() {
		return adrName;
	}

	public void setAdrName(String adrName) {
		this.adrName = adrName;
	}

	public String getDelAdd1() {
		return delAdd1;
	}

	public void setDelAdd1(String delAdd1) {
		this.delAdd1 = delAdd1;
	}

	public String getDelAdd2() {
		return delAdd2;
	}

	public void setDelAdd2(String delAdd2) {
		this.delAdd2 = delAdd2;
	}

	public String getDelAdd3() {
		return delAdd3;
	}

	public void setDelAdd3(String delAdd3) {
		this.delAdd3 = delAdd3;
	}

	public String getPhonNum() {
		return phonNum;
	}

	public void setPhonNum(String phonNum) {
		this.phonNum = phonNum;
	}

	@Override
	public String toString() {
		return "MemAddressVO [adrName=" + adrName + ", delAdd1=" + delAdd1 + ", delAdd2=" + delAdd2 + ", delAdd3="
				+ delAdd3 + ", phonNum=" + phonNum + ", message=" + message + "]";
	}

	
	
	
}
