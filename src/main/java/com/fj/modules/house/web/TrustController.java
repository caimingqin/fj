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
import com.fj.modules.house.entity.Trust;
import com.fj.modules.house.service.TrustService;

/**
 * 房东在线委托Controller
 * @author caimingqin
 * @version 2015-04-27
 */
@Controller
@RequestMapping(value = "${adminPath}/house/trust")
public class TrustController extends BaseController {

	@Autowired
	private TrustService trustService;
	
	@ModelAttribute
	public Trust get(@RequestParam(required=false) String id) {
		Trust entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = trustService.get(id);
		}
		if (entity == null){
			entity = new Trust();
		}
		return entity;
	}
	
	@RequiresPermissions("house:trust:view")
	@RequestMapping(value = {"list", ""})
	public String list(Trust trust, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Trust> page = trustService.findPage(new Page<Trust>(request, response), trust); 
		model.addAttribute("page", page);
		return "modules/house/trustList";
	}

	@RequiresPermissions("house:trust:view")
	@RequestMapping(value = "form")
	public String form(Trust trust, Model model) {
		model.addAttribute("trust", trust);
		return "modules/house/trustForm";
	}

	@RequiresPermissions("house:trust:edit")
	@RequestMapping(value = "save")
	public String save(Trust trust, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, trust)){
			return form(trust, model);
		}
		trustService.save(trust);
		addMessage(redirectAttributes, "保存房东在线委托成功");
		return "redirect:"+Global.getAdminPath()+"/house/trust/?repage";
	}
	
	@RequiresPermissions("house:trust:edit")
	@RequestMapping(value = "delete")
	public String delete(Trust trust, RedirectAttributes redirectAttributes) {
		trustService.delete(trust);
		addMessage(redirectAttributes, "删除房东在线委托成功");
		return "redirect:"+Global.getAdminPath()+"/house/trust/?repage";
	}

}