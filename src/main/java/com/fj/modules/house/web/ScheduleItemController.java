/**
 * 
 */
package com.fj.modules.house.web;

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
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.service.ScheduleItemService;

/**
 * 看房日程明细Controller
 * @author caimingqin
 * @version 2015-04-13
 */
@Controller
@RequestMapping(value = "${adminPath}/house/scheduleItem")
public class ScheduleItemController extends BaseController {

	@Autowired
	private ScheduleItemService scheduleItemService;
	
	@ModelAttribute
	public ScheduleItem get(@RequestParam(required=false) String id) {
		ScheduleItem entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = scheduleItemService.get(id);
		}
		if (entity == null){
			entity = new ScheduleItem();
		}
		return entity;
	}
	
	@RequiresPermissions("house:scheduleItem:view")
	@RequestMapping(value = {"list", ""})
	public String list(ScheduleItem scheduleItem, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ScheduleItem> page = scheduleItemService.findPage(new Page<ScheduleItem>(request, response), scheduleItem); 
		model.addAttribute("page", page);
		return "modules/house/scheduleItemList";
	}

	@RequiresPermissions("house:scheduleItem:view")
	@RequestMapping(value = "form")
	public String form(ScheduleItem scheduleItem, Model model) {
		model.addAttribute("scheduleItem", scheduleItem);
		return "modules/house/scheduleItemForm";
	}

	@RequiresPermissions("house:scheduleItem:edit")
	@RequestMapping(value = "save")
	public String save(ScheduleItem scheduleItem, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, scheduleItem)){
			return form(scheduleItem, model);
		}
		scheduleItemService.save(scheduleItem);
		addMessage(redirectAttributes, "保存看房日程明细成功");
		return "redirect:"+Global.getAdminPath()+"/house/scheduleItem/?repage";
	}
	
	@RequiresPermissions("house:scheduleItem:edit")
	@RequestMapping(value = "delete")
	public String delete(ScheduleItem scheduleItem, RedirectAttributes redirectAttributes) {
		scheduleItemService.delete(scheduleItem);
		addMessage(redirectAttributes, "删除看房日程明细成功");
		return "redirect:"+Global.getAdminPath()+"/house/scheduleItem/?repage";
	}

}