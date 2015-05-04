package com.fj.common.init;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fj.common.utils.CodeCreator;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.SmallArea;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-context.xml"})
public class AppCodeInitTest {

	@Autowired
	private AppCodeInit appCodeInit;
	@Test
	public void init(){
		CodeCreator codeCreator = CodeCreator.get(House.class.getSimpleName());
		
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		System.out.println(codeCreator.createCode());
		
		CodeCreator codeCreator2 = CodeCreator.get(SmallArea.class.getSimpleName());
		
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		System.out.println(codeCreator2.createCode());
		
	}
	@Test
	public void test33(){
		String lastHouseCode = appCodeInit.getLastHouseCode();
	}
}
