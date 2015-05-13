//package com.fj.modules.house.service;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.BeanUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.fj.common.mapper.JsonMapper;
//import com.fj.modules.house.entity.House;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath:/spring-context.xml"})
////@ActiveProfiles("development")
//public class HouseServiceTest {
//
//	@Autowired
//	private HouseService houseService;
//
//	@Test
//	public void test(){
//		House house = houseService.get("703b7f7599ca4e35a68b262b6796aade");
//		System.out.println(JsonMapper.toJsonString(house));
//		House h = new House();
//	      BeanUtils.copyProperties(house, h);
//	      h.setId(null);
//		  houseService.save(h);
////		for(int i=0;i<20;i++){
////			House h = new House();
////            BeanUtils.copyProperties(house, h);
////            h.setId(null);
////            h.setName("大唐世家"+i);
////            houseService.save(h);
////		}
//	
//	}
//}
