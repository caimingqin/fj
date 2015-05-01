/**
 * 
 */
package com.fj.modules.house.dao;

import java.util.List;
import java.util.Map;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.SeeHouse;

/**
 * 看房清单DAO接口
 * @author caimingqin
 * @version 2015-04-28
 */
@MyBatisDao
public interface SeeHouseDao extends CrudDao<SeeHouse> {

	List<SeeHouse> search(Map<String, Object> params);
	
}