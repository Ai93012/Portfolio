package com.fit.model;

public class CartDTO {

	private int cartId; //카트 번호
	private String userId;  //회원 id
	private int pNum;	//상품 번호
	private int pCount;	//구매수량
	
	//product
	
	private String pName; //상품명
	private int pSale; 	//할인율
	private int pPrice; //가격
	
	
	//추가
	private int totalPrice;


	
	
	
	
	public int getCartId() {
		return cartId;
	}


	public void setCartId(int cartId) {
		this.cartId = cartId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getpNum() {
		return pNum;
	}


	public void setpNum(int pNum) {
		this.pNum = pNum;
	}


	public int getpCount() {
		return pCount;
	}


	public void setpCount(int pCount) {
		this.pCount = pCount;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public int getpPrice() {
		return pPrice;
	}


	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}


	public int getpSale() {
		return pSale;
	}


	public int getTotalPrice() {
		return totalPrice;
	}
	
	
	public void initSaleTotal() {
		this.pSale = (int)(this.pPrice * (1-this.pSale));
		this.totalPrice = this.pSale*this.pCount;
	}


	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", userId=" + userId + ", pNum=" + pNum + ", pCount=" + pCount + ", pName="
				+ pName + ", pSale=" + pSale + ", pPrice=" + pPrice + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
	
	
}
