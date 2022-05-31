package com.fit.sample;

import static org.junit.Assert.assertNotNull;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) // �׽�Ʈ �ڵ�
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") // ��ü ���
@Log4j
public class SampleTests {
		@Setter(onMethod_ = { @Autowired }) // @Autowired : �ش� �ν��Ͻ� ������
		private Restaurant restaurant; // ���������κ��� �ڵ� �����ش޶�� ǥ��
		@Test // JUnit���� �׽�Ʈ ����� ǥ���ϴ� ������̼�
		public void testExist() { // �ش� �޼ҵ带 �����ϰ� JUnit Test ����� ����
		assertNotNull(restaurant); // restaurant ��ü�� null�� �ƴ� ��� �׽�Ʈ ����
		log.info(restaurant); // ��ü�� �����Ǿ����� Ȯ��
		log.info("--------------------------------");;
		log.info(restaurant.getChef()); // Chef ��ü�� restaurant ��ü�� ���ԵǾ����� Ȯ��
		}

}
