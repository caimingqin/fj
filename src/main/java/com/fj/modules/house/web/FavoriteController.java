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
import com.fj.modules.house.entity.Favorite;
import com.fj.modules.house.service.FavoriteService;

/**
 * 用户收藏Controller
 * @author caimingqin
 * @version 2015-04-26
 */
@Controller
@RequestMapping(value = "${adminPath}/house/favorite")
public class FavoriteController extends BaseController {

	@Autowired
	private FavoriteService favoriteService;
	
	@ModelAttribute
	public Favorite get(@RequestParam(required=false) String id) {
		Favorite entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = favoriteService.get(id);
		}
		if (entity == null){
			entity = new Favorite();
		}
		return entity;
	}
	
	@RequiresPermissions("house:favorite:view")
	@RequestMapping(value = {"list", ""})
	public String list(Favorite favorite, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Favorite> page = favoriteService.findPage(new Page<Favorite>(request, response), favorite); 
		model.addAttribute("page", page);
		return "modules/house/favoriteList";
	}

	@RequiresPermissions("house:favorite:view")
	@RequestMapping(value = "form")
	public String form(Favorite favorite, Model model) {
		model.addAttribute("favorite", favorite);
		return "modules/house/favoriteForm";
	}

	@RequiresPermissions("house:favorite:edit")
	@RequestMapping(value = "save")
	public String save(Favorite favorite, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, favorite)){
			return form(favorite, model);
		}
		favoriteService.save(favorite);
		addMessage(redirectAttributes, "保存收藏成功");
		return "redirect:"+Global.getAdminPath()+"/house/favorite/?repage";
	}
	
	@RequiresPermissions("house:favorite:edit")
	@RequestMapping(value = "delete")
	public String delete(Favorite favorite, RedirectAttributes redirectAttributes) {
		favoriteService.delete(favorite);
		addMessage(redirectAttributes, "删除收藏成功");
		return "redirect:"+Global.getAdminPath()+"/house/favorite/?repage";
	}

}