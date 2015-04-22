/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.dao.ScheduleItemDao;

/**
 * 看房日程明细Service
 * @author caimingqin
 * @version 2015-04-13
 */
@Service
@Transactional(readOnly = true)
public class ScheduleItemService extends CrudService<ScheduleItemDao, ScheduleItem> {

	public ScheduleItem get(String id) {
		return super.get(id);
	}
	
	public List<ScheduleItem> findList(ScheduleItem scheduleItem) {
		return super.findList(scheduleItem);
	}
	
	public Page<ScheduleItem> findPage(Page<ScheduleItem> page, ScheduleItem scheduleItem) {
		return super.findPage(page, scheduleItem);
	}
	
	@Transactional(readOnly = false)
	public void save(ScheduleItem scheduleItem) {
		super.save(scheduleItem);
	}
	
	@Transactional(readOnly = false)
	public void delete(ScheduleItem scheduleItem) {
		super.delete(scheduleItem);
	}
	
}