/**
 * 
 */
package com.fj.modules.sys.dao;

import com.fj.common.persistence.TreeDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author 
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
