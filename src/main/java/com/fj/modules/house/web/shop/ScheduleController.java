package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller("shopScheduleController")
@RequestMapping(value = "${shopPath}/schedule")
public class ScheduleController extends BaseController {


	@RequestMapping(value = "/orderHouse")
	public String orderHouse() {
		return "modules/house/shop/orderHousePage";
	}
	
	
	@RequestMapping(value = "/submitOrderHouse")
	public String submitOrderHouse() {
		return "modules/house/shop/submitOrderHousePage";
	}
	
	@RequestMapping(value = "/list")
	public String list() {
		return "modules/house/shop/appointmentList2";
	}
}
