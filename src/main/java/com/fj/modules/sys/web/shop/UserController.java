package com.fj.modules.sys.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller("shopUserController")
@RequestMapping(value = "${shopPath}")
public class UserController extends BaseController {
	@RequestMapping(value = "/userInfo")
	public String userInfo() {
		return "modules/house/shop/userInfo";
	}
}
