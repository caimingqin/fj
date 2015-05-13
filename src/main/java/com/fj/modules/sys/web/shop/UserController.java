package com.fj.modules.sys.web.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fj.common.config.Constant;
import com.fj.common.utils.CacheUtils;
import com.fj.common.utils.CookieUtils;
import com.fj.common.utils.Encodes;
import com.fj.common.utils.IdGen;
import com.fj.common.web.BaseController;
import com.fj.common.web.Result;
import com.fj.modules.sys.entity.User;
import com.fj.modules.sys.service.UserService;

/*
 * 
 */
@Controller("shopUserController")
@RequestMapping(value = "${shopPath}")
public class UserController extends BaseController {
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/login")
	public Result login(HttpServletRequest req,HttpServletResponse response){
		String mobile = req.getParameter("mobile");
		String plainPassword = req.getParameter("pwd");
		User user = new User();
		user.setMobile(mobile);
		User u = userService.find(user);
		if(u == null){
			return Result.fail().msg("用户为空");
		} 
		if(Encodes.validatePassword(plainPassword, u.getPassword())){
			String token = IdGen.uuid();
			CookieUtils.setCookie(response, Constant.COOKIE_IS_TOKEN,token);
			CacheUtils.put(token, u);
			return  Result.success().msg("登录成功");
		}
		return Result.fail();
	}
	
	@ResponseBody
	@RequestMapping("/register")
	public Result register(HttpServletRequest req,HttpServletResponse response){
		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");
		String validateCode = req.getParameter("validateCode");
		if(!validateCode.equalsIgnoreCase("test")){
			return Result.fail().msg("验证码错误");
		}
		User user = new User();
		user.setLoginName(mobile);
		String entryptPassword = Encodes.entryptPassword(password);
		user.setPassword(entryptPassword);
		userService.save(user);
		String token = IdGen.uuid();
		CookieUtils.setCookie(response, Constant.COOKIE_IS_TOKEN, token);
		CacheUtils.put(token, user);
		return Result.success().msg("创建用户成功").content(user);
	}
	
	public String logout(){
		return null;
	}
	
	@RequestMapping(value = "/userInfo")
	public String userInfo(HttpServletRequest request,Model model) {
		User loginUser = getLoginUser(request);
		model.addAttribute("user", loginUser);
		return "modules/house/shop/userInfo";
	}
	
	@ResponseBody
	@RequestMapping("/checkLogin")
	public Result checkLogin(HttpServletRequest request){
		User loginUser = getLoginUser(request);
		if( loginUser == null){
			return Result.fail();
		}
	   return Result.success().content(loginUser);	
	}
	@ResponseBody
	@RequestMapping("/loginOut")
	public Result loginOut(HttpServletRequest request,HttpServletResponse response){
	    String token = CookieUtils.getCookie(request, Constant.COOKIE_IS_TOKEN);
	    if(token != null){
	    	CookieUtils.removeCookie(response, Constant.COOKIE_IS_TOKEN);
	    	CacheUtils.remove(token);
	    }
		return Result.success();
	}
}
