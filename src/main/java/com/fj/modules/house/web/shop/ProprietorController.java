package com.fj.modules.house.web.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.Trust;
import com.fj.modules.house.service.TrustService;

/*
 * 
 */
@Controller
@RequestMapping(value = "${shopPath}/proprietor")
public class ProprietorController extends BaseController {

	@Autowired
    private TrustService trustService;
	@RequestMapping(value = "/service")
	public String service() {
		return "modules/house/shop/service";
	}
	
	
	@RequestMapping(value = "/delegation")
	public String delegation() {
		return "modules/house/shop/delegation";
	}
	
	
	@RequestMapping(value = "/addDelegation")
	public String addDelegation(Trust trust,Model model) {
		trustService.save(trust);
		return "modules/house/shop/addDelegation";
	}
	
	
}
