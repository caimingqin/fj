package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}")
public class ReviewController extends BaseController {


	@RequestMapping(value = "/review")
	public String review() {
		return "modules/house/shop/review";
	}
}
