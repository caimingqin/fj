package com.fj.modules.house.web.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.service.HouseService;
import com.fj.modules.house.service.ScheduleItemService;
import com.fj.modules.house.service.ScheduleService;
import com.fj.modules.sys.utils.UserUtils;

/*
 * 
 */
@Controller("shopScheduleController")
@RequestMapping(value = "${shopPath}/schedule")
public class ScheduleController extends BaseController {
    
	@Autowired
    private ScheduleService scheduleService;
	@Autowired
	private ScheduleItemService scheduleItemService;
	@Autowired
	private HouseService houseService;
	@RequestMapping(value = "/list")
	public String list(Model model) {
		if(UserUtils.noLogin()){
			return "modules/house/shop/appointmentListEmpty";
		}
		Schedule schedule=new Schedule();
		schedule.setCreateBy(UserUtils.getUser());
		List<Schedule> schedules = scheduleService.findList(schedule);
		ScheduleItem scheduleItem = new ScheduleItem();
		for(Schedule s:schedules){
			scheduleItem.setSchedule(s);
			List<ScheduleItem> siList = scheduleItemService.findList(scheduleItem);
			for(ScheduleItem si:siList){
				si.setHouse(houseService.get(si.getHouse().getId()));
			}
			s.setItems(siList);
		}
		model.addAttribute("schedules", schedules);
		model.addAttribute("sList", schedules);//预约中的房源
		return "modules/house/shop/appointmentList";
	}
}
