package com.fj.modules.house.web.shop;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.persistence.Page;
import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.service.HouseService;
import com.fj.modules.house.service.SmallAreaService;

/*
 * 
 */
@Controller("shopHouseController")
@RequestMapping(value = "${shopPath}")
public class HouseController extends BaseController {

	@Autowired
	private HouseService houseService;
	@Autowired
	private SmallAreaService smallAreaService;

	@RequestMapping(value = "/search")
	public String search(HttpServletRequest req, HttpServletResponse response,
			Model model) throws IOException {
		Page<House> page = new Page<House>(req, response);
		Map<String, Object> query = new HashMap<String, Object>();
		query.put("housetype", req.getParameter("housetype"));
		query.put("addr", req.getParameter("addr"));
		query.put("startprice", req.getParameter("startprice"));
		query.put("endprice", req.getParameter("endprice"));
		page.setQeuryObject(query);
		page = houseService.findPage(page);
		model.addAttribute("page", page);
		return "modules/house/shop/search";
	}

	@RequestMapping(value = "/detail")
	public String detail(String id,HttpServletRequest req, HttpServletResponse response, Model model) {
	    House	house = houseService.get(id);
	    SmallArea smallArea = house.getSmallArea();
	    house.setSmallArea(smallAreaService.get(smallArea.getId()));
		Page<House> page = new Page<House>(req, response);
		Map<String, Object> query = new HashMap<String, Object>();
		query.put("smallAreaId", smallArea.getId());
		page.setQeuryObject(query);
//		page.addFilter();
		page = houseService.findPage(page);
		
		model.addAttribute("house", house);
		model.addAttribute("ohList", page.getList());
		return "modules/house/shop/detail";
	}

	@RequestMapping(value = "/map")
	public String map() {
		return "modules/house/shop/map";
	}

}
