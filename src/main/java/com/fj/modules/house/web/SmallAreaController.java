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
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.service.SmallAreaService;

/**
 * 小区Controller
 * @author caimingqin
 * @version 2015-04-12
 */
@Controller
@RequestMapping(value = "${adminPath}/house/smallArea")
public class SmallAreaController extends BaseController {

	@Autowired
	private SmallAreaService smallAreaService;
	
	@ModelAttribute
	public SmallArea get(@RequestParam(required=false) String id) {
		SmallArea entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = smallAreaService.get(id);
		}
		if (entity == null){
			entity = new SmallArea();
		}
		return entity;
	}
	
	@RequiresPermissions("house:smallArea:view")
	@RequestMapping(value = {"list", ""})
	public String list(SmallArea smallArea, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SmallArea> page = smallAreaService.findPage(new Page<SmallArea>(request, response), smallArea); 
		model.addAttribute("page", page);
		return "modules/house/smallAreaList";
	}

	@RequiresPermissions("house:smallArea:view")
	@RequestMapping(value = "form")
	public String form(SmallArea smallArea, Model model) {
		model.addAttribute("smallArea", smallArea);
		return "modules/house/smallAreaForm";
	}

	@RequiresPermissions("house:smallArea:edit")
	@RequestMapping(value = "save")
	public String save(SmallArea smallArea, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, smallArea)){
			return form(smallArea, model);
		}
		smallAreaService.save(smallArea);
		addMessage(redirectAttributes, "保存小区成功");
		return "redirect:"+Global.getAdminPath()+"/house/smallArea/?repage";
	}
	
	@RequiresPermissions("house:smallArea:edit")
	@RequestMapping(value = "delete")
	public String delete(SmallArea smallArea, RedirectAttributes redirectAttributes) {
		smallAreaService.delete(smallArea);
		addMessage(redirectAttributes, "删除小区成功");
		return "redirect:"+Global.getAdminPath()+"/house/smallArea/?repage";
	}

}