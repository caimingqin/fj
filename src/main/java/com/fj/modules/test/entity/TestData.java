/**
 * 
 */
package com.fj.modules.test.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.fj.common.persistence.DataEntity;

/**
 * testEntity
 * @author caimingqin
 * @version 2015-04-26
 */
public class TestData extends DataEntity<TestData> {
	
	private static final long serialVersionUID = 1L;
	private String user;		// 归属用户
	private String office;		// 归属部门
	private String area;		// 归属区域
	private String name;		// 名称
	private String sex;		// 性别
	private Date inDate;		// 加入日期
	private Long price;		// 价格
	private Date beginInDate;		// 开始 加入日期
	private Date endInDate;		// 结束 加入日期
	private Long beginPrice;		// 开始 价格
	private Long endPrice;		// 结束 价格
	
	public TestData() {
		super();
	}

	public TestData(String id){
		super(id);
	}

	@Length(min=0, max=64, message="归属用户长度必须介于 0 和 64 之间")
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	@Length(min=0, max=64, message="归属部门长度必须介于 0 和 64 之间")
	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
	}
	
	@Length(min=0, max=64, message="归属区域长度必须介于 0 和 64 之间")
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}
	
	@Length(min=0, max=100, message="名称长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=1, message="性别长度必须介于 0 和 1 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	
	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}
	
	public Date getBeginInDate() {
		return beginInDate;
	}

	public void setBeginInDate(Date beginInDate) {
		this.beginInDate = beginInDate;
	}
	
	public Date getEndInDate() {
		return endInDate;
	}

	public void setEndInDate(Date endInDate) {
		this.endInDate = endInDate;
	}
		
	public Long getBeginPrice() {
		return beginPrice;
	}

	public void setBeginPrice(Long beginPrice) {
		this.beginPrice = beginPrice;
	}
	
	public Long getEndPrice() {
		return endPrice;
	}

	public void setEndPrice(Long endPrice) {
		this.endPrice = endPrice;
	}
		
}