/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Trust;

/**
 * 房东在线委托DAO接口
 * @author caimingqin
 * @version 2015-04-27
 */
@MyBatisDao
public interface TrustDao extends CrudDao<Trust> {
	
}