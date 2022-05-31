package com.fit.model;

import java.sql.Date;

public class MemberVO {
	
	//회원 이름
	private String userName;
	
	//회원 아이디
	private String userId;
	
	//회원 비밀번호
	private String userPass;
	
	//회원 우편번호
	private String address1;
	
	//회원 기본주소
	private String address2;
	
	//회원 이메일
	private String userMail;
	
	//회원 가입일
	private Date regDate;
	
	//관리자 구분(0: 일반사용자, 1:관리자)
	private int adminCk;
	
	@Override
	public String toString() {
		return "MemberVO [userName=" + userName + ", userId=" + userId + ", userPass=" + userPass + ", address1="
				+ address1 + ", address2=" + address2 + ", userMail=" + userMail + ", regDate=" + regDate + ", adminCk="
				+ adminCk + ", address3=" + address3 + "]";
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	//회원 상세주소
	private String address3;

}

