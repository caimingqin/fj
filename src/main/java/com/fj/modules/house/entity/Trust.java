/**
 * 
 */
package com.fj.modules.house.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.fj.common.persistence.DataEntity;

/**
 * 房东在线委托Entity
 * @author caimingqin
 * @version 2015-04-27
 */
public class Trust extends DataEntity<Trust> {
	
	private static final long serialVersionUID = 1L;
	private String rentWay;		// 出租类型
	private String areaName;		// 所在城市
	private String samllAreaName;		// 小区名称
	private String building;		// 楼栋号/单元号
	private String room;		// 室号
	private String bedroom;		// 室
	private String livingroom;		// 厅
	private String wc;		// 卫
	private Double areanum;		// 面积
	private Long rentprice;		// 租金
	private String name;		// 房东名称
	private String gender;		// 性别
	private String mobile;		// 手机号
	private String addr;		// 地址

	public Trust() {
		super();
	}

	public Trust(String id){
		super(id);
	}

	
	
	public String getRentWay() {
		return rentWay;
	}

	public void setRentWay(String rentWay) {
		this.rentWay = rentWay;
	}

	@Length(min=0, max=64, message="所在城市长度必须介于 0 和 64 之间")
	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	
	@Length(min=0, max=64, message="小区名称长度必须介于 0 和 64 之间")
	public String getSamllAreaName() {
		return samllAreaName;
	}

	public void setSamllAreaName(String samllAreaName) {
		this.samllAreaName = samllAreaName;
	}
	
	@Length(min=0, max=64, message="楼栋号/单元号长度必须介于 0 和 64 之间")
	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}
	
	@Length(min=0, max=64, message="室号长度必须介于 0 和 64 之间")
	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}
	
	@Length(min=0, max=64, message="室长度必须介于 0 和 64 之间")
	public String getBedroom() {
		return bedroom;
	}

	public void setBedroom(String bedroom) {
		this.bedroom = bedroom;
	}
	
	@Length(min=0, max=64, message="厅长度必须介于 0 和 64 之间")
	public String getLivingroom() {
		return livingroom;
	}

	public void setLivingroom(String livingroom) {
		this.livingroom = livingroom;
	}
	
	@Length(min=0, max=64, message="卫长度必须介于 0 和 64 之间")
	public String getWc() {
		return wc;
	}

	public void setWc(String wc) {
		this.wc = wc;
	}
	
	public Double getAreanum() {
		return areanum;
	}

	public void setAreanum(Double areanum) {
		this.areanum = areanum;
	}
	
	public Long getRentprice() {
		return rentprice;
	}

	public void setRentprice(Long rentprice) {
		this.rentprice = rentprice;
	}
	
	@Length(min=0, max=64, message="房东名称长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=64, message="性别长度必须介于 0 和 64 之间")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Length(min=0, max=64, message="手机号长度必须介于 0 和 64 之间")
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	@Length(min=0, max=64, message="地址长度必须介于 0 和 64 之间")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}