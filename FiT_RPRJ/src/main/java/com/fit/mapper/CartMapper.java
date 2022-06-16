package com.fit.mapper;

import java.util.List;

import com.fit.model.CartDTO;

public interface CartMapper {

	
	/*��ٱ��� �߰�*/
	public int addCart(CartDTO cart) throws Exception;
	
	/*��ٱ��� ����*/
	public int deleteCart(int cartId);
	
	/*��ǰ ���� ����*/
	public int modCartCount(CartDTO cart);
	
	/*��ٱ��� ���*/
	public List<CartDTO> cartList(String userId);

	
	/*��ٱ��� ��ȸ*/
	public CartDTO ckCart(CartDTO cart);
}
