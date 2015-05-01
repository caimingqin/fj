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
import com.fj.modules.house.entity.SeeHouse;
import com.fj.modules.house.service.SeeHouseService;

/**
 * 看房清单Controller
 * @author caimingqin
 * @version 2015-04-28
 */
@Controller
@RequestMapping(value = "${adminPath}/house/seeHouse")
public class SeeHouseController extends BaseController {

	@Autowired
	private SeeHouseService seeHouseService;
	
	@ModelAttribute
	public SeeHouse get(@RequestParam(required=false) String id) {
		SeeHouse entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = seeHouseService.get(id);
		}
		if (entity == null){
			entity = new SeeHouse();
		}
		return entity;
	}
	
	@RequiresPermissions("house:seeHouse:view")
	@RequestMapping(value = {"list", ""})
	public String list(SeeHouse seeHouse, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SeeHouse> page = seeHouseService.findPage(new Page<SeeHouse>(request, response), seeHouse); 
		model.addAttribute("page", page);
		return "modules/house/seeHouseList";
	}

	@RequiresPermissions("house:seeHouse:view")
	@RequestMapping(value = "form")
	public String form(SeeHouse seeHouse, Model model) {
		model.addAttribute("seeHouse", seeHouse);
		return "modules/house/seeHouseForm";
	}

	@RequiresPermissions("house:seeHouse:edit")
	@RequestMapping(value = "save")
	public String save(SeeHouse seeHouse, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, seeHouse)){
			return form(seeHouse, model);
		}
		seeHouseService.save(seeHouse);
		addMessage(redirectAttributes, "保存看房清单成功");
		return "redirect:"+Global.getAdminPath()+"/house/seeHouse/?repage";
	}
	
	@RequiresPermissions("house:seeHouse:edit")
	@RequestMapping(value = "delete")
	public String delete(SeeHouse seeHouse, RedirectAttributes redirectAttributes) {
		seeHouseService.delete(seeHouse);
		addMessage(redirectAttributes, "删除看房清单成功");
		return "redirect:"+Global.getAdminPath()+"/house/seeHouse/?repage";
	}

}