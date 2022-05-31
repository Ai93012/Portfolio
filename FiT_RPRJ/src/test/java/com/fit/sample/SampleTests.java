package com.fit.sample;

import static org.junit.Assert.assertNotNull;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) // 테스트 코드
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") // 객체 등록
@Log4j
public class SampleTests {
		@Setter(onMethod_ = { @Autowired }) // @Autowired : 해당 인스턴스 변수가
		private Restaurant restaurant; // 스프링으로부터 자동 주입해달라는 표시
		@Test // JUnit에서 테스트 대상을 표시하는 어노테이션
		public void testExist() { // 해당 메소드를 선택하고 JUnit Test 기능을 실행
		assertNotNull(restaurant); // restaurant 객체가 null이 아닐 경우 테스트 성공
		log.info(restaurant); // 객체가 생성되었음을 확인
		log.info("--------------------------------");;
		log.info(restaurant.getChef()); // Chef 객체가 restaurant 객체에 주입되었음을 확인
		}

}
