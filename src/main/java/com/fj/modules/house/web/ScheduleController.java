/**
 * 
 */
package com.fj.modules.house.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fj.common.config.Global;
import com.fj.common.persistence.Page;
import com.fj.common.web.BaseController;
import com.fj.common.utils.StringUtils;
import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.service.ScheduleItemService;
import com.fj.modules.house.service.ScheduleService;

/**
 * 看房日程Controller
 * @author caimingqin
 * @version 2015-04-13
 */
@Controller
@RequestMapping(value = "${adminPath}/house/schedule")
public class ScheduleController extends BaseController {

	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private ScheduleItemService scheduleItemService;
	@ModelAttribute
	public Schedule get(@RequestParam(required=false) String id) {
		Schedule entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = scheduleService.get(id);
		}
		if (entity == null){
			entity = new Schedule();
		}
		return entity;
	}
	
	@RequiresPermissions("house:schedule:view")
	@RequestMapping(value = {"list", ""})
	public String list(Schedule schedule, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Schedule> page = scheduleService.findPage(new Page<Schedule>(request, response), schedule); 
		model.addAttribute("page", page);
		return "modules/house/scheduleList";
	}

	@RequiresPermissions("house:schedule:view")
	@RequestMapping(value = "form")
	public String form(Schedule schedule, Model model) {
		ScheduleItem scheduleItem = new ScheduleItem();
		scheduleItem.setSchedule(schedule);
		List<ScheduleItem> scheduleItemList = scheduleItemService.findList(scheduleItem);
		model.addAttribute("schedule", schedule);
		model.addAttribute("scheduleItemList", scheduleItemList);
		return "modules/house/scheduleForm";
	}

	@RequiresPermissions("house:schedule:edit")
	@RequestMapping(value = "save")
	public String save(Schedule schedule, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, schedule)){
			return form(schedule, model);
		}
		scheduleService.save(schedule);
		addMessage(redirectAttributes, "保存看房日程成功");
		return "redirect:"+Global.getAdminPath()+"/house/schedule/?repage";
	}
	
	@RequiresPermissions("house:schedule:edit")
	@RequestMapping(value = "delete")
	public String delete(Schedule schedule, RedirectAttributes redirectAttributes) {
		scheduleService.delete(schedule);
		addMessage(redirectAttributes, "删除看房日程成功");
		return "redirect:"+Global.getAdminPath()+"/house/schedule/?repage";
	}

}