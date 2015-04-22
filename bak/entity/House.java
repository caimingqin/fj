package com.fj.modules.house.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.Area;

/**
 * 房源
 * 
 * @author Administrator
 * 
 */
public class House extends DataEntity<House>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 584942579273787734L;
	/** 所属小区 */
	private SmallArea smallArea;
	/** 业主 */
	private Proprietor proprietor;
	/** 名称 */
	private String name;
	/** 房租 */
	private BigDecimal rentPrice;
	/** 房型 */
	private String houseType;
	/** 楼层 */
	private String floor;
	/** 面积 */
	private String areaNum;
	/** 区域 */
	private Area area;
	/** 经纬度 */
	private String geo;
	/** 可入住时间 */
	private Date inDate;
	/** 租赁方式 */
	private String rentWay;
	/** 租金押付 */
	private String cashType;
	/** 装修 */
	private String decorateType;
	/** 状态 */
	private String status;
	/** 地址 */
	private String addr;
	/** 房屋配置 */
	private List<Attribute> attributes = new ArrayList<Attribute>();
	/** 图片 */
	private List<HouseImage> houseImages = new ArrayList<HouseImage>();
	/** 简介 */
	private String description;
	public SmallArea getSmallArea() {
		return smallArea;
	}
	public void setSmallArea(SmallArea smallArea) {
		this.smallArea = smallArea;
	}
	public Proprietor getProprietor() {
		return proprietor;
	}
	public void setProprietor(Proprietor proprietor) {
		this.proprietor = proprietor;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getRentPrice() {
		return rentPrice;
	}
	public void setRentPrice(BigDecimal rentPrice) {
		this.rentPrice = rentPrice;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getAreaNum() {
		return areaNum;
	}
	public void setAreaNum(String areaNum) {
		this.areaNum = areaNum;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	public String getGeo() {
		return geo;
	}
	public void setGeo(String geo) {
		this.geo = geo;
	}
	public Date getInDate() {
		return inDate;
	}
	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	public String getRentWay() {
		return rentWay;
	}
	public void setRentWay(String rentWay) {
		this.rentWay = rentWay;
	}
	public String getCashType() {
		return cashType;
	}
	public void setCashType(String cashType) {
		this.cashType = cashType;
	}
	public String getDecorateType() {
		return decorateType;
	}
	public void setDecorateType(String decorateType) {
		this.decorateType = decorateType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public List<Attribute> getAttributes() {
		return attributes;
	}
	public void setAttributes(List<Attribute> attributes) {
		this.attributes = attributes;
	}
	public List<HouseImage> getHouseImages() {
		return houseImages;
	}
	public void setHouseImages(List<HouseImage> houseImages) {
		this.houseImages = houseImages;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


	
}
