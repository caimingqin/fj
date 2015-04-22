package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "/")
public class IndexController extends BaseController {


	@RequestMapping(value = "")
	public String index() {
		System.out.println("IndexController==========");
		return "modules/house/shop/index";
	}
	
}
