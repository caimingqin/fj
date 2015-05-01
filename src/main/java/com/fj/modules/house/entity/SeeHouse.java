/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.sys.entity.User;
import org.hibernate.validator.constraints.Length;

import com.fj.common.persistence.DataEntity;

/**
 * 看房清单Entity
 * @author caimingqin
 * @version 2015-04-28
 */
public class SeeHouse extends DataEntity<SeeHouse> {
	
	private static final long serialVersionUID = 1L;
	private User user;		// 用户编号
	private House house;		// 房源
	private String type;		// 类型
	
	public SeeHouse() {
		super();
	}

	public SeeHouse(String id){
		super(id);
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Length(min=0, max=64, message="房源编号长度必须介于 0 和 64 之间")
	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}
	
	@Length(min=0, max=2, message="类型长度必须介于 0 和 2 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}