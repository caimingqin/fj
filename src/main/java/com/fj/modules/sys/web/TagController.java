/**
 * 
 */
package com.fj.modules.sys.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fj.common.persistence.BaseEntity;
import com.fj.common.persistence.DataEntity;
import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.service.SmallAreaService;
import com.fj.modules.sys.entity.User;
import com.fj.modules.sys.service.SystemService;

/**
 * 标签Controller
 * @author 
 * @version 2013-3-23
 */
@Controller
@RequestMapping(value = "${adminPath}/tag")
public class TagController extends BaseController {
	
	/**
	 * 树结构选择标签（treeselect.tag）
	 */
	@Autowired
	private SystemService systemService;
	@Autowired
	private SmallAreaService smallAreaService;
	@RequiresPermissions("user")
	@RequestMapping(value = "treeselect",method={RequestMethod.GET,RequestMethod.POST})
	public String treeselect(HttpServletRequest request, Model model) {
		model.addAttribute("url", request.getParameter("url")); 	// 树结构数据URL
		model.addAttribute("extId", request.getParameter("extId")); // 排除的编号ID
		model.addAttribute("checked", request.getParameter("checked")); // 是否可复选
		model.addAttribute("selectIds", request.getParameter("selectIds")); // 指定默认选中的ID
		model.addAttribute("isAll", request.getParameter("isAll")); 	// 是否读取全部数据，不进行权限过滤
		model.addAttribute("module", request.getParameter("module"));	// 过滤栏目模型（仅针对CMS的Category树）
		return "modules/sys/tagTreeselect";
	}
	
	/**
	 * 图标选择标签（iconselect.tag）
	 */
	@RequiresPermissions("user")
	@RequestMapping(value = "iconselect")
	public String iconselect(HttpServletRequest request, Model model) {
		model.addAttribute("value", request.getParameter("value"));
		return "modules/sys/tagIconselect";
	}
	
	/**
	 * 模糊查询组件
	 * @param request
	 * @param model
	 * @return
	 */
	@RequiresPermissions("user")
	@RequestMapping(value = "tableselect",method={RequestMethod.GET,RequestMethod.POST})
	public String tableselect(HttpServletRequest request, Model model) {
		model.addAttribute("url", request.getParameter("url")); 	// 树结构数据URL
		model.addAttribute("extId", request.getParameter("extId")); // 排除的编号ID
		model.addAttribute("checked", request.getParameter("checked")); // 是否可复选
		model.addAttribute("selectIds", request.getParameter("selectIds")); // 指定默认选中的ID
		model.addAttribute("isAll", request.getParameter("isAll")); 	// 是否读取全部数据，不进行权限过滤
		model.addAttribute("module", request.getParameter("module"));	// 过滤栏目模型（仅针对CMS的Category树）
		model.addAttribute("entity", request.getParameter("entity"));	// 过滤栏目模型（仅针对CMS的Category树）
		return "modules/sys/tagTableselect";
	}
	
	/**
	 * 不同实体的模糊查询
	 * @param entity
	 * @param name
	 * @param response
	 * @return
	 */
	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "tableData",method={RequestMethod.POST})
	public Object tableData(@RequestParam(required=false) String entity,@RequestParam(required=false) String name, HttpServletResponse response) {
		if(entity.equalsIgnoreCase(User.class.getSimpleName())){
			User user = new User();
			user.setName(name);
			return systemService.findUser(user);
		}else if(entity.equalsIgnoreCase(SmallArea.class.getSimpleName())){
			SmallArea smallArea = new SmallArea();
			smallArea.setName(name);
			return smallAreaService.findList(smallArea);
		}
		return null;
	}
	
	
	/**
	 * 模糊查询组件
	 * @param request
	 * @param model
	 * @return
	 */
	@RequiresPermissions("user")
	@RequestMapping(value = "mapselect",method={RequestMethod.GET,RequestMethod.POST})
	public String mapselect(HttpServletRequest request, Model model) {
		model.addAttribute("url", request.getParameter("url")); 	// 数据URL
		model.addAttribute("geo",request.getParameter("geo"));
		return "modules/sys/tagMapselect";
	}
	
}
