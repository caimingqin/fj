/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.ScheduleItem;

/**
 * 看房日程明细DAO接口
 * @author caimingqin
 * @version 2015-04-13
 */
@MyBatisDao
public interface ScheduleItemDao extends CrudDao<ScheduleItem> {
	
}