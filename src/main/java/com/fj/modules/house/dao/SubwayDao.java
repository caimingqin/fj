/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.TreeDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Subway;

/**
 * 保存DAO接口
 * @author caimingqin
 * @version 2015-04-12
 */
@MyBatisDao
public interface SubwayDao extends TreeDao<Subway> {
	
}