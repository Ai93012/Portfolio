package com.fit.model;

public class CartDTO {

	private int cartId; //īƮ ��ȣ
	private String userId;  //ȸ�� id
	private int pNum;	//��ǰ ��ȣ
	private int pCount;	//���ż���
	
	//product
	
	private String pName; //��ǰ��
	private int pSale; 	//������
	private int pPrice; //����
	
	
	//�߰�
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
