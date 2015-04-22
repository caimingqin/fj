/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Schedule;

/**
 * 看房日程DAO接口
 * @author caimingqin
 * @version 2015-04-13
 */
@MyBatisDao
public interface ScheduleDao extends CrudDao<Schedule> {
	
}