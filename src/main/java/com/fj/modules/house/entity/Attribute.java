package com.fj.modules.house.entity;

import com.fj.common.persistence.DataEntity;

/**
 * 房屋配置
 * @author Administrator
 *
 */
public class Attribute extends DataEntity<Attribute>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String name;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
