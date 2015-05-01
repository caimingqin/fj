/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.dao.ScheduleDao;

/**
 * 看房日程Service
 * @author caimingqin
 * @version 2015-04-13
 */
@Service
@Transactional(readOnly = true)
public class ScheduleService extends CrudService<ScheduleDao, Schedule> {

	@Autowired
	private ScheduleItemService  scheduleItemService;
	public Schedule get(String id) {
		return super.get(id);
	}
	
	public List<Schedule> findList(Schedule schedule) {
		return super.findList(schedule);
	}
	
	public Page<Schedule> findPage(Page<Schedule> page, Schedule schedule) {
		return super.findPage(page, schedule);
	}
	
	@Transactional(readOnly = false)
	public void save(Schedule schedule, List<House> houses) {
		super.save(schedule);
		for(House h:houses){
			scheduleItemService.save(new ScheduleItem(schedule, h));
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(Schedule schedule) {
		super.delete(schedule);
	}
	
}