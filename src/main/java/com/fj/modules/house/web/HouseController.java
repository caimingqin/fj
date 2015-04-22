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
import com.fj.modules.house.entity.House;
import com.fj.modules.house.service.HouseService;

/**
 * 房源Controller
 * @author caimingqin
 * @version 2015-04-12
 */
@Controller
@RequestMapping(value = "${adminPath}/house/house")
public class HouseController extends BaseController {

	@Autowired
	private HouseService houseService;
	
	@ModelAttribute
	public House get(@RequestParam(required=false) String id) {
		House entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = houseService.get(id);
		}
		if (entity == null){
			entity = new House();
		}
		return entity;
	}
	
	@RequiresPermissions("house:house:view")
	@RequestMapping(value = {"list", ""})
	public String list(House house, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<House> page = houseService.findPage(new Page<House>(request, response), house); 
		model.addAttribute("page", page);
		return "modules/house/houseList";
	}

	@RequiresPermissions("house:house:view")
	@RequestMapping(value = "form")
	public String form(House house, Model model) {
		model.addAttribute("house", house);
		return "modules/house/houseForm";
	}

	@RequiresPermissions("house:house:edit")
	@RequestMapping(value = "save")
	public String save(House house, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, house)){
			return form(house, model);
		}
		houseService.save(house);
		addMessage(redirectAttributes, "保存房源成功");
		return "redirect:"+Global.getAdminPath()+"/house/house/?repage";
	}
	
	@RequiresPermissions("house:house:edit")
	@RequestMapping(value = "delete")
	public String delete(House house, RedirectAttributes redirectAttributes) {
		houseService.delete(house);
		addMessage(redirectAttributes, "删除房源成功");
		return "redirect:"+Global.getAdminPath()+"/house/house/?repage";
	}

}