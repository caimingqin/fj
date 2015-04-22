package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}/proprietor")
public class ProprietorController extends BaseController {


	@RequestMapping(value = "/service")
	public String service() {
		return "modules/house/shop/service";
	}
	
	
	@RequestMapping(value = "/delegation")
	public String delegation() {
		return "modules/house/shop/delegation";
	}
	
	
	@RequestMapping(value = "/addDelegation")
	public String addDelegation() {
		return "modules/house/shop/addDelegation";
	}
	
	
}
