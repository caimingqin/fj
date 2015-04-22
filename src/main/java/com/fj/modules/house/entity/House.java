/**
 * 
 */
package com.fj.modules.house.entity;

import com.fj.modules.sys.entity.User;
import com.fj.modules.house.entity.SmallArea;
import org.hibernate.validator.constraints.Length;
import com.fj.modules.sys.entity.Area;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.fj.common.persistence.DataEntity;

/**
 * 房源Entity
 * @author caimingqin
 * @version 2015-04-12
 */
public class House extends DataEntity<House> {
	
	private static final long serialVersionUID = 1L;
	private User proprietor;		// 房东选择
	private SmallArea smallArea;		// 小区选择
	private String name;		// 房源名称
	private Long rentprice;		// 租金
	private String housetype;		// 房型
	private String floor;		// 楼层
	private String areanum;		// 面积
	private Area area;		// 区域选择
	private String geo;		// 经纬度
	private Date indate;		// 可入住时间
	private String rentway;		// 租赁方式
	private String cashtype;		// 租金押付
	private String decoratetype;		// 装修情况
	private String status;		// 房源状态
	private String addr;		// 地址
	private String description;		// 详情
	private String images;		// 房图

	private String delflag;		// delflag
	
	public House() {
		super();
	}

	public House(String id){
		super(id);
	}

	public User getProprietor() {
		return proprietor;
	}

	public void setProprietor(User proprietor) {
		this.proprietor = proprietor;
	}
	
	public SmallArea getSmallArea() {
		return smallArea;
	}

	public void setSmallArea(SmallArea smallArea) {
		this.smallArea = smallArea;
	}
	
	@Length(min=0, max=64, message="房源名称长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Long getRentprice() {
		return rentprice;
	}

	public void setRentprice(Long rentprice) {
		this.rentprice = rentprice;
	}
	
	@Length(min=0, max=64, message="房型长度必须介于 0 和 64 之间")
	public String getHousetype() {
		return housetype;
	}

	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	
	@Length(min=0, max=64, message="楼层长度必须介于 0 和 64 之间")
	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}
	
	@Length(min=0, max=64, message="面积长度必须介于 0 和 64 之间")
	public String getAreanum() {
		return areanum;
	}

	public void setAreanum(String areanum) {
		this.areanum = areanum;
	}
	
	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}
	
	@Length(min=0, max=64, message="经纬度长度必须介于 0 和 64 之间")
	public String getGeo() {
		return geo;
	}

	public void setGeo(String geo) {
		this.geo = geo;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}
	
	@Length(min=0, max=64, message="租赁方式长度必须介于 0 和 64 之间")
	public String getRentway() {
		return rentway;
	}

	public void setRentway(String rentway) {
		this.rentway = rentway;
	}
	
	@Length(min=0, max=64, message="租金押付长度必须介于 0 和 64 之间")
	public String getCashtype() {
		return cashtype;
	}

	public void setCashtype(String cashtype) {
		this.cashtype = cashtype;
	}
	
	@Length(min=0, max=64, message="装修情况长度必须介于 0 和 64 之间")
	public String getDecoratetype() {
		return decoratetype;
	}

	public void setDecoratetype(String decoratetype) {
		this.decoratetype = decoratetype;
	}
	
	@Length(min=0, max=64, message="房源状态长度必须介于 0 和 64 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Length(min=0, max=64, message="地址长度必须介于 0 和 64 之间")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	@Length(min=0, max=64, message="详情长度必须介于 0 和 64 之间")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Length(min=0, max=1000, message="房图长度必须介于 0 和 1000 之间")
	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}
	
	
	
	@Length(min=1, max=64, message="delflag长度必须介于 1 和 64 之间")
	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}
	
}