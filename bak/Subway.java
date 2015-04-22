/**
 * 
 */
package com.fj.modules.house.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.validator.constraints.Length;

import com.fj.common.persistence.TreeEntity;

/**
 * 保存Entity
 * @author caimingqin
 * @version 2015-03-30
 */
public class Subway extends TreeEntity<Subway> {
	
	private static final long serialVersionUID = 1L;
	private Subway parent;		// parent_id
	private String parentIds;		// parent_ids
	private String name;		// name
	private Integer sort;		// sort
	private String code;		// code
	private String type;		// type
	private String geo;		// geo
	
	public Subway() {
		super();
	}

	public Subway(String id){
		super(id);
	}

	@JsonBackReference
	public Subway getParent() {
		return parent;
	}

	public void setParent(Subway parent) {
		this.parent = parent;
	}
	
	@Length(min=0, max=2000, message="parent_ids长度必须介于 0 和 2000 之间")
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	@Length(min=0, max=100, message="name长度必须介于 0 和 100 之间")
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
	
	@Length(min=0, max=100, message="code长度必须介于 0 和 100 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Length(min=0, max=1, message="type长度必须介于 0 和 1 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@Length(min=0, max=200, message="geo长度必须介于 0 和 200 之间")
	public String getGeo() {
		return geo;
	}

	public void setGeo(String geo) {
		this.geo = geo;
	}
	
	public String getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : "0";
	}
}