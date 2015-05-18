/**
 * 
 */
package com.fj.modules.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.service.CrudService;
import com.fj.modules.sys.dao.UserDao;
import com.fj.modules.sys.entity.User;

/**
 * 用户Service
 * @author 
 * @version 2014-05-16
 */
@Service
@Transactional(readOnly = true)
public class UserService extends CrudService<UserDao, User> {
	
	@Autowired
	private UserDao userDao;

	/**
	 * 根据登录名称查询用户
	 * @param loginName
	 * @return
	 */
	public User getByLoginName(User user){
		return userDao.getByLoginName(user); 
	}

	
	/**
	 * 更新用户密码
	 * @param user
	 * @return
	 */
	public void updatePasswordById(User user){
		 userDao.updatePasswordById(user); 
	}
	
	/**
	 * 更新登录信息，如：登录IP、登录时间
	 * @param user
	 * @return
	 */
	public void updateLoginInfo(User user){
		userDao.updateLoginInfo(user); 
	}

	/**
	 * 更新用户信息
	 * @param user
	 * @return
	 */
	public void updateUserInfo(User user){
		userDao.updateLoginInfo(user); 
	}
}
