package com.fj.modules.house.web.shop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fj.common.web.BaseController;
import com.fj.modules.house.entity.Favorite;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.service.FavoriteService;
import com.fj.modules.house.service.HouseService;
import com.fj.modules.sys.utils.UserUtils;

/*
 * 
 */
@Controller("shopFavoriteController")
@RequestMapping(value = "${shopPath}/favorite")
public class FavoriteController extends BaseController {

	
	@Autowired
	private FavoriteService favoriteService;
	
	@Autowired
	private HouseService houseService;
	
	@RequestMapping(value = {"list", ""})
	public String list(Favorite favorite, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<Favorite> favorites = favoriteService.findListByUser();
		model.addAttribute("favorites", favorites);
		return "modules/house/shop/favorite";
	}


	@RequestMapping(value = "add")
	public String save(String houseId, Model model, RedirectAttributes redirectAttributes) {
		House house = houseService.get(houseId);
		Favorite favorite = new Favorite();
		favorite.setHouse(house);
		favorite.setUser(UserUtils.getUser());
		favoriteService.save(favorite);
		addMessage(redirectAttributes, "保存收藏成功");
		return null;
	}
	
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		Favorite favorite = favoriteService.get(id);
		favoriteService.delete(favorite);
		return null;
	}

}
