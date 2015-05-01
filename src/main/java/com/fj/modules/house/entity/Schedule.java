/**
 * 
 */
package com.fj.modules.house.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 看房日程Entity
 * @author caimingqin
 * @version 2015-04-13
 */
public class Schedule extends DataEntity<Schedule> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 名称
	private String status;		// 状态
	private Date lookDate;		// 看房时间
	private Date optionDate;		// 看房时间(备选)
	private String meetaddr;		// 碰头地点
	private User agent;		// 受理经纪人
	private String roomerName;		// 房客姓名
	private String roomerPhone;		// 房客电话
	private String reason;		// 取消原因
	private String gender;
	private List<ScheduleItem> items=new ArrayList<ScheduleItem>();
	public Schedule() {
		super();
	}

	public Schedule(String id){
		super(id);
	}

	@Length(min=0, max=100, message="名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="状态长度必须介于 0 和 100 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLookDate() {
		return lookDate;
	}

	public void setLookDate(Date lookDate) {
		this.lookDate = lookDate;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getOptionDate() {
		return optionDate;
	}

	public void setOptionDate(Date optionDate) {
		this.optionDate = optionDate;
	}
	
	@Length(min=0, max=100, message="碰头地点长度必须介于 0 和 100 之间")
	public String getMeetaddr() {
		return meetaddr;
	}

	public void setMeetaddr(String meetaddr) {
		this.meetaddr = meetaddr;
	}
	
	public User getAgent() {
		return agent;
	}

	public void setAgent(User agent) {
		this.agent = agent;
	}
	
	@Length(min=0, max=64, message="房客姓名长度必须介于 0 和 64 之间")
	public String getRoomerName() {
		return roomerName;
	}

	public void setRoomerName(String roomerName) {
		this.roomerName = roomerName;
	}
	
	@Length(min=0, max=64, message="房客电话长度必须介于 0 和 64 之间")
	public String getRoomerPhone() {
		return roomerPhone;
	}

	public void setRoomerPhone(String roomerPhone) {
		this.roomerPhone = roomerPhone;
	}
	
	@Length(min=0, max=100, message="取消原因长度必须介于 0 和 100 之间")
	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<ScheduleItem> getItems() {
		return items;
	}

	public void setItems(List<ScheduleItem> items) {
		this.items = items;
	}


}