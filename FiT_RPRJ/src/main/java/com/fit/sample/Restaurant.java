package com.fit.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Setter;

@Component
@Data
public class Restaurant {
	@Setter(onMethod_ = @Autowired) // @Setter : �ڵ����� setChef()�� ������ �� ����
	private Chef chef; // onMethod �Ӽ� : �����Ǵ� setChef()�� @Autowired ������̼��� �߰�
}
