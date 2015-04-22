package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}")
public class FavoriteController extends BaseController {


	@RequestMapping(value = "/favorite")
	public String favorite() {
		return "modules/house/shop/favorite";
	}
}
