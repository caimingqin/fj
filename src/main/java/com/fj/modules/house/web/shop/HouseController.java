package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller("shopHouseController")
@RequestMapping(value = "${shopPath}")
public class HouseController extends BaseController {


	@RequestMapping(value = "/search")
	public String search() {
		return "modules/house/shop/search";
	}
	
	
	@RequestMapping(value = "/detail")
	public String detail() {
		return "modules/house/shop/detail";
	}
	

	@RequestMapping(value = "/map")
	public String map() {
		return "modules/house/shop/map";
	}
	
	
	
}
