package com.fit.mapper;

import java.util.List;

import com.fit.model.CartDTO;

public interface CartMapper {

	
	/*장바구니 추가*/
	public int addCart(CartDTO cart) throws Exception;
	
	/*장바구니 삭제*/
	public int deleteCart(int cartId);
	
	/*상품 수량 수정*/
	public int modCartCount(CartDTO cart);
	
	/*장바구니 목록*/
	public List<CartDTO> cartList(String userId);

	
	/*장바구니 조회*/
	public CartDTO ckCart(CartDTO cart);
}
