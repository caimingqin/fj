package com.fj.modules.sys.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;
import com.fj.modules.sys.entity.User;
import com.fj.modules.sys.utils.UserUtils;

/*
 * 
 */
@Controller("shopUserController")
@RequestMapping(value = "${shopPath}")
public class UserController extends BaseController {
	
	
	@RequestMapping(value = "/userInfo")
	public String userInfo(Model model) {
		User user = UserUtils.getUser();
		model.addAttribute("user", user);
		return "modules/house/shop/userInfo";
	}
}
