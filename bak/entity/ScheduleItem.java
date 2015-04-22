/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.house.entity.House;
import org.hibernate.validator.constraints.Length;
import com.fj.modules.house.entity.Schedule;

import com.fj.common.persistence.DataEntity;

/**
 * 看房日程明细Entity
 * @author caimingqin
 * @version 2015-03-30
 */
public class ScheduleItem extends DataEntity<ScheduleItem> {
	
	private static final long serialVersionUID = 1L;
	private House house;		// 房源ID
	private Integer sort;		// 排序
	private String status;		// 状态
	private Schedule schedule;		// 看房日程ID
	
	public ScheduleItem() {
		super();
	}

	public ScheduleItem(String id){
		super(id);
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	@Length(min=0, max=64, message="状态长度必须介于 0 和 64 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	
}