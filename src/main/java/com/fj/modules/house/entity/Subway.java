/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.sys.entity.Area;
import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.validator.constraints.Length;

import com.fj.common.persistence.TreeEntity;

/**
 * 保存Entity
 * @author caimingqin
 * @version 2015-04-12
 */
public class Subway extends TreeEntity<Subway> {
	
	private static final long serialVersionUID = 1L;
	private Area area;		// 区域选择
	private Subway parent;		// 上级地铁
	private String parentIds;		// 上级编号集合
	private String name;		// 地铁名称
	private String code;		// 编号
	private String geo;		// 经纬度
	private String type;		// 类型
	private Integer sort;		// 排序
	
	public Subway() {
		super();
	}

	public Subway(String id){
		super(id);
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}
	
	@JsonBackReference
	public Subway getParent() {
		return parent;
	}

	public void setParent(Subway parent) {
		this.parent = parent;
	}
	
	@Length(min=0, max=2000, message="上级编号集合长度必须介于 0 和 2000 之间")
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	@Length(min=0, max=100, message="地铁名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="编号长度必须介于 0 和 100 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Length(min=0, max=200, message="经纬度长度必须介于 0 和 200 之间")
	public String getGeo() {
		return geo;
	}

	public void setGeo(String geo) {
		this.geo = geo;
	}
	
	@Length(min=0, max=1, message="类型长度必须介于 0 和 1 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	public String getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : "0";
	}
}