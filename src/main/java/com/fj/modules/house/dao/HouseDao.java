/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.House;

/**
 * 房源DAO接口
 * @author caimingqin
 * @version 2015-04-12
 */
@MyBatisDao
public interface HouseDao extends CrudDao<House> {
	
}