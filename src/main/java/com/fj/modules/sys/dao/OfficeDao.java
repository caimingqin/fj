/**
 * 
 */
package com.fj.modules.sys.dao;

import com.fj.common.persistence.TreeDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author 
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
}
