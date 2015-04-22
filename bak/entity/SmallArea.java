/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.sys.entity.Area;
import org.hibernate.validator.constraints.Length;

import com.fj.common.persistence.DataEntity;

/**
 * 小区Entity
 * @author caimingqin
 * @version 2015-03-30
 */
public class SmallArea extends DataEntity<SmallArea> {
	
	private static final long serialVersionUID = 1L;
	private Area area;		// 区域选择
	private String name;		// 名称
	private Integer sort;		// 排序
	private String code;		// 编码
	private String geo;		// 经纬度
	private String subwayId;		// 附近地铁
	private String fee;		// 物业费
	private Integer buildYear;		// 建造年代
	private Double plotRatio;		// 容积率
	private Double greenRatio;		// 绿化率
	
	public SmallArea() {
		super();
	}

	public SmallArea(String id){
		super(id);
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
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
	
	@Length(min=0, max=100, message="编码长度必须介于 0 和 100 之间")
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
	
	@Length(min=0, max=64, message="附近地铁长度必须介于 0 和 64 之间")
	public String getSubwayId() {
		return subwayId;
	}

	public void setSubwayId(String subwayId) {
		this.subwayId = subwayId;
	}
	
	@Length(min=0, max=64, message="物业费长度必须介于 0 和 64 之间")
	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}
	
	public Integer getBuildYear() {
		return buildYear;
	}

	public void setBuildYear(Integer buildYear) {
		this.buildYear = buildYear;
	}
	
	public Double getPlotRatio() {
		return plotRatio;
	}

	public void setPlotRatio(Double plotRatio) {
		this.plotRatio = plotRatio;
	}
	
	public Double getGreenRatio() {
		return greenRatio;
	}

	public void setGreenRatio(Double greenRatio) {
		this.greenRatio = greenRatio;
	}
	
}