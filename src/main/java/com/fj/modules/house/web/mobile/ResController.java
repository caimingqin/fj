package com.fj.modules.house.web.mobile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fj.common.persistence.Page;
import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.service.HouseService;
import com.fj.modules.house.service.SmallAreaService;

/*
 * 
 */
@RestController("moblieHouseController")
@RequestMapping(value = "${restPath}")
public class ResController extends BaseController {

	@Autowired
	private HouseService houseService;
	@Autowired
	private SmallAreaService smallAreaService;

	@RequestMapping(value = "/search")
	public String search(HttpServletRequest req) throws IOException {
		//接口便捷性要求
		//统一传输协议
		
		//条件过滤
		//分页
		//排序   根据字段排序
		//根据字段过滤     通配符号*  获取指定字段， 过滤指定字段
		Searchable searchable = new Searchable();
		searchable.setEntity("House");
		searchable.setConditions("id#eq#a2790982110d45e195754ec9e4c25f6d;rentprice#eq#3000");
		searchable.setSorts("rentprice@desc;createDate@desc");
		searchable.setFilters("G#id#name#rentprice");
		return "modules/house/shop/search";
	}


}
