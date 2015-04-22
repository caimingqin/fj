/**
 * 
 */
package com.fj.modules.house.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.fj.common.config.Global;
import com.fj.common.web.BaseController;
import com.fj.common.utils.StringUtils;
import com.fj.modules.house.entity.Subway;
import com.fj.modules.house.service.SubwayService;

/**
 * 保存Controller
 * @author caimingqin
 * @version 2015-04-12
 */
@Controller
@RequestMapping(value = "${adminPath}/house/subway")
public class SubwayController extends BaseController {

	@Autowired
	private SubwayService subwayService;
	
	@ModelAttribute
	public Subway get(@RequestParam(required=false) String id) {
		Subway entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = subwayService.get(id);
		}
		if (entity == null){
			entity = new Subway();
		}
		return entity;
	}
	
	@RequiresPermissions("house:subway:view")
	@RequestMapping(value = {"list", ""})
	public String list(Subway subway, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<Subway> list = subwayService.findList(subway); 
		model.addAttribute("list", list);
		return "modules/house/subwayList";
	}

	@RequiresPermissions("house:subway:view")
	@RequestMapping(value = "form")
	public String form(Subway subway, Model model) {
		if (subway.getParent()!=null && StringUtils.isNotBlank(subway.getParent().getId())){
			subway.setParent(subwayService.get(subway.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(subway.getId())){
				Subway subwayChild = new Subway();
				subwayChild.setParent(new Subway(subway.getParent().getId()));
				List<Subway> list = subwayService.findList(subway); 
				if (list.size() > 0){
					subway.setSort(list.get(list.size()-1).getSort());
					if (subway.getSort() != null){
						subway.setSort(subway.getSort() + 30);
					}
				}
			}
		}
		if (subway.getSort() == null){
			subway.setSort(30);
		}
		model.addAttribute("subway", subway);
		return "modules/house/subwayForm";
	}

	@RequiresPermissions("house:subway:edit")
	@RequestMapping(value = "save")
	public String save(Subway subway, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, subway)){
			return form(subway, model);
		}
		subwayService.save(subway);
		addMessage(redirectAttributes, "保存地铁成功");
		return "redirect:"+Global.getAdminPath()+"/house/subway/?repage";
	}
	
	@RequiresPermissions("house:subway:edit")
	@RequestMapping(value = "delete")
	public String delete(Subway subway, RedirectAttributes redirectAttributes) {
		subwayService.delete(subway);
		addMessage(redirectAttributes, "删除地铁成功");
		return "redirect:"+Global.getAdminPath()+"/house/subway/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<Subway> list = subwayService.findList(new Subway());
		for (int i=0; i<list.size(); i++){
			Subway e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParentId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}