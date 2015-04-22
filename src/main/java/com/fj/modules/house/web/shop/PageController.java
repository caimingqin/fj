package com.fj.modules.house.web.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}/page")
public class PageController extends BaseController {


	@RequestMapping(value = "/appDomwload")
	public String appDownload() {
		return "modules/house/shop/appDownPage";
	}
	
	
	@RequestMapping(value = "/about")
	public String about() {
		return "modules/house/shop/about";
	}
	

	@RequestMapping(value = "/contactus")
	public String contactus() {
		return "modules/house/shop/contactus";
	}
	
	@RequestMapping(value = "/protocol")
	public String protocol() {
		return "modules/house/shop/protocol";
	}
	@RequestMapping(value = "/agentProtocol")
	public String agentProtocol() {
		return "modules/house/shop/agentProtocol";
	}
	
}
