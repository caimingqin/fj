/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Favorite;

/**
 * 用户收藏DAO接口
 * @author caimingqin
 * @version 2015-04-26
 */
@MyBatisDao
public interface FavoriteDao extends CrudDao<Favorite> {
	
}