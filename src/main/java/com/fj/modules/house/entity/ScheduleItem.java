/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.House;

import org.hibernate.validator.constraints.Length;

import com.fj.common.persistence.DataEntity;

/**
 * 看房日程明细Entity
 * @author caimingqin
 * @version 2015-04-13
 */
public class ScheduleItem extends DataEntity<ScheduleItem> {
	
	private static final long serialVersionUID = 1L;
	private Schedule schedule;		// 看房日程ID
	private House house;		// 房源ID
	private String status;		// 状态
	
	public ScheduleItem() {
		super();
	}

	public ScheduleItem(String id){
		super(id);
	}

	public ScheduleItem(Schedule schedule, House house) {
		super();
		this.schedule = schedule;
		this.house = house;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	
	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}
	
	@Length(min=0, max=64, message="状态长度必须介于 0 和 64 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}