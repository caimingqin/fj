package com.fj.modules.house.entity;

import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 看房清单
 * 
 * @author Administrator
 * 
 */
public class SeeHouse extends DataEntity<SeeHouse>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4651807282304482196L;
	/** 房源 */
	private House house;
	/** 房客 */
	private User user;
	/** 状态 */
	private Status status;

	public enum Status {
		normal, cancled, invalid
	}

	public House getHouse() {
		return house;
	}

	public User getUser() {
		return user;
	}

	public Status getStatus() {
		return status;
	}
	
	
}
