package com.fj.modules.house.web.shop;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fj.common.utils.DateUtils;
import com.fj.common.utils.StringUtils;
import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.SeeHouse;
import com.fj.modules.house.service.HouseService;
import com.fj.modules.house.service.ScheduleService;
import com.fj.modules.house.service.SeeHouseService;
import com.fj.modules.sys.utils.UserUtils;

/*
 * 
 */
@Controller("shopSeeHouseController")
@RequestMapping(value = "${shopPath}/seeHouse")
public class SeeHouseController extends BaseController {

	
	
	@Autowired
	private SeeHouseService seeHouseService;
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private HouseService houseService;

	@RequestMapping(value = {"list", ""})
	public String list(SeeHouse seeHouse, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<SeeHouse> list = seeHouseService.findListByUser(); 
		model.addAttribute("list", list);
		return "modules/house/shop/seeHouseList";
	}

	@ResponseBody
	@RequestMapping(value = "add")
	public String add(String houseId) {
		SeeHouse seeHouse = new SeeHouse();
		seeHouse.setHouse(houseService.get(houseId));
		seeHouse.setUser(UserUtils.getUser());
		seeHouseService.save(seeHouse);
		return "保存看房清单成功";
	}
	
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		SeeHouse seeHouse = seeHouseService.get(id);
		seeHouseService.delete(seeHouse);
		return null;
	}
	
	@RequestMapping(value = "/orderHouse")
	public String orderHouse(HttpServletRequest req,Model model) {
		String[] houseIds = req.getParameterValues("houseIds");
		List<House> houses=new ArrayList<House>();
		if(houseIds != null && houseIds.length>0){
			for(String houseId:houseIds){
				houses.add(houseService.get(houseId));
			}
		}
		model.addAttribute("houses",houses);
		return "modules/house/shop/orderHousePage";
	}
	
	
	@RequestMapping(value = "/submitOrderHouse")
	public String submitOrderHouse(HttpServletRequest req) {
		String[] houseIds = req.getParameterValues("houseIds");
		String realName = req.getParameter("realName");
		String gender = req.getParameter("gender");
		String lookDate = req.getParameter("lookDate");
		String optionDate = req.getParameter("optionDate");
		Schedule schedule = new Schedule();
		if(StringUtils.isNotBlank(optionDate)){
			schedule.setOptionDate(DateUtils.parseDate(optionDate));
		}
		schedule.setLookDate(DateUtils.parseDate(lookDate));
		schedule.setRoomerName(realName);
		schedule.setRoomerPhone(UserUtils.getUser().getMobile());
		schedule.setGender(gender);
		List<House> houses=new ArrayList<House>();
		if(houseIds != null && houseIds.length>0){
			for(String houseId:houseIds){
				houses.add(houseService.get(houseId));
			}
		}
		scheduleService.save(schedule,houses);
		return "modules/house/shop/submitOrderHousePage";
	}
}
