package com.fit.mapper;




import java.awt.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fit.model.MemAddressVO;

import lombok.extern.log4j.Log4j;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AddMemDelTests {
	
	@Autowired
	private MemDelMapper memdelmapper;			
	
	
	
	
	//@Test
	public void addDelivery() throws Exception{
		MemAddressVO memad = new MemAddressVO();
		
		memad.setAdrName("test3");
		memad.setDelAdd1("test3");
		memad.setDelAdd2("test3");
		memad.setDelAdd3("test3");
		memad.setPhonNum("test3");
		memad.setMessage("test3");
	
		
		memdelmapper.addMemDel(memad);		
		
	}
	
	 
	
	
	
}