package com.fit.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Setter;

@Component
@Data
public class Restaurant {
	@Setter(onMethod_ = @Autowired) // @Setter : 자동으로 setChef()를 컴파일 시 생성
	private Chef chef; // onMethod 속성 : 생성되는 setChef()에 @Autowired 어노테이션을 추가
}
