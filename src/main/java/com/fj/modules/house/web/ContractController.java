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
import com.fj.modules.house.entity.Contract;
import com.fj.modules.house.service.ContractService;

/**
 * 合同管理Controller
 * @author caimingqin
 * @version 2015-04-21
 */
@Controller
@RequestMapping(value = "${adminPath}/house/contract")
public class ContractController extends BaseController {

	@Autowired
	private ContractService contractService;
	
	@ModelAttribute
	public Contract get(@RequestParam(required=false) String id) {
		Contract entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = contractService.get(id);
		}
		if (entity == null){
			entity = new Contract();
		}
		return entity;
	}
	
	@RequiresPermissions("house:contract:view")
	@RequestMapping(value = {"list", ""})
	public String list(Contract contract, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Contract> page = contractService.findPage(new Page<Contract>(request, response), contract); 
		model.addAttribute("page", page);
		return "modules/house/contractList";
	}

	@RequiresPermissions("house:contract:view")
	@RequestMapping(value = "form")
	public String form(Contract contract, Model model) {
		model.addAttribute("contract", contract);
		return "modules/house/contractForm";
	}

	@RequiresPermissions("house:contract:edit")
	@RequestMapping(value = "save")
	public String save(Contract contract, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, contract)){
			return form(contract, model);
		}
		contractService.save(contract);
		addMessage(redirectAttributes, "保存合同成功");
		return "redirect:"+Global.getAdminPath()+"/house/contract/?repage";
	}
	
	@RequiresPermissions("house:contract:edit")
	@RequestMapping(value = "delete")
	public String delete(Contract contract, RedirectAttributes redirectAttributes) {
		contractService.delete(contract);
		addMessage(redirectAttributes, "删除合同成功");
		return "redirect:"+Global.getAdminPath()+"/house/contract/?repage";
	}

}