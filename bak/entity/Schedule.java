/**
 * 
 */
package com.fj.modules.house.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fj.modules.sys.entity.User;

import com.fj.common.persistence.DataEntity;

/**
 * 看房日程Entity
 * @author caimingqin
 * @version 2015-03-30
 */
public class Schedule extends DataEntity<Schedule> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 名称
	private Integer sort;		// 排序
	private String code;		// 编号
	private String status;		// 状态
	private Date lookDate;		// 看房时间
	private String meetaddr;		// 碰头地点
	private User agent;		// 受理经纪人
	private User user;		// 房客
	private String reason;		// 取消原因
	
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
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	@Length(min=0, max=100, message="编号长度必须介于 0 和 100 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Length(min=0, max=100, message="取消原因长度必须介于 0 和 100 之间")
	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
}