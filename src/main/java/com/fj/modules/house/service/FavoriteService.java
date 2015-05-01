/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.dao.FavoriteDao;
import com.fj.modules.house.entity.Favorite;
import com.fj.modules.sys.utils.UserUtils;

/**
 * 用户收藏Service
 * @author caimingqin
 * @version 2015-04-26
 */
@Service
@Transactional(readOnly = true)
public class FavoriteService extends CrudService<FavoriteDao, Favorite> {

	@Autowired
	private FavoriteDao favoriteDao;
	@Autowired
	private HouseService houseService;
	public Favorite get(String id) {
		return super.get(id);
	}
	
	public List<Favorite> findList(Favorite favorite) {
		return super.findList(favorite);
	}
	
	public Page<Favorite> findPage(Page<Favorite> page, Favorite favorite) {
		return super.findPage(page, favorite);
	}
	
	@Transactional(readOnly = false)
	public void save(Favorite favorite) {
		super.save(favorite);
	}
	
	@Transactional(readOnly = false)
	public void delete(Favorite favorite) {
		super.delete(favorite);
	}

	public List<Favorite> findListByUser() {
		Favorite favorite = new Favorite();
		favorite.setCreateBy(UserUtils.getUser());
	    List<Favorite> favorites = favoriteDao.findList(favorite);
	    for(Favorite f:favorites){
	    	f.setHouse(houseService.get(f.getHouse().getId()));
	    }
		return favorites;
	}
	
}