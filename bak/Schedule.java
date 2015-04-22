package com.fj.modules.house.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 看房日程
 * @author Administrator
 *
 */
public class Schedule extends DataEntity<Schedule> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3342546262709818379L;
	/** 房源集合    */
	private List<ScheduleItem> items=new ArrayList<ScheduleItem>();
	/** 状态        */
	private Status status;
	/** 看房时间    */
	private Date lookDate;
	/** 看房见面地点  */
	private String meetAddr;
	/** 看房备注    */
	private String remark;
	/** 经纪人      */
	private User agent;
	/** 房客        */
	private User user;
	/** 取消原因       */
	private String reason;
	public enum Status{
		normal,canceled,part,completed;
	}
	public List<ScheduleItem> getItems() {
		return items;
	}
	public Status getStatus() {
		return status;
	}
	public Date getLookDate() {
		return lookDate;
	}
	public String getMeetAddr() {
		return meetAddr;
	}
	public String getRemark() {
		return remark;
	}
	public User getAgent() {
		return agent;
	}
	public User getUser() {
		return user;
	}
	public String getReason() {
		return reason;
	}
	
	
}
