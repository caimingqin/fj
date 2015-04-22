package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}/seeHouse")
public class SeeHouseController extends BaseController {


	@RequestMapping(value = "/list")
	public String seeHouse() {
		return "modules/house/shop/seeHouseList";
	}
}
