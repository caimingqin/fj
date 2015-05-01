/**
 * 
 */
package com.fj.modules.house.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
	
	List<House> search(Map<String, Object> params);
	
}