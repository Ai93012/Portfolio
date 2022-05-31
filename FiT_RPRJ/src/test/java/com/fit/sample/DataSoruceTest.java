package com.fit.sample;

import static org.junit.Assert.fail;
import java.sql.Connection;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// @ContextConfiguration(classes= {RootConfig.class}) // 자바 설정을 이용하는 경우
@Log4j
public class DataSoruceTest {
	
	
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testConnection() {
		try(
			Connection con = dataSource.getConnection();
			SqlSession session = sqlSessionFactory.openSession();
		){
			
		System.out.println("con=" + con);
		System.out.println("session=" + session);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	}
