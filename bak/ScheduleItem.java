package com.fj.modules.house.entity;

import com.fj.common.persistence.DataEntity;


/**
 * 看房日程
 * @author Administrator
 *
 */
public class ScheduleItem extends DataEntity<ScheduleItem> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7276038079927080925L;
	/** 房源  */
	private House house;
	private Status status;
	public enum Status {
		 normal,
		/** 已看房 */
		looked,
		canceled
	}
	public House getHouse() {
		return house;
	}
	public Status getStatus() {
		return status;
	}
	
	
}
