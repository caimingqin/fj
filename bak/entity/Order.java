package com.fj.modules.house.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 订单
 * @author Administrator
 *
 */
public class Order extends DataEntity<Order>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7583923600467641469L;
	/** 房源          */
	private House house;
	/** 入住时间      */
	private Date inDate;
	/** 退房时间      */
	private Date outDate;
	/** 押金          */
	private BigDecimal deposit;
	/** 签约人姓名    */
	private String contractorName;
	/** 签约人身份证号*/
	private String contractorPID;
	/** 提交的签约资料*/
    private List<SubmitData> datas;
	/** 经纪人        */
    private User agent;
	/** 房客          */
    private User user;
	public House getHouse() {
		return house;
	}
	public Date getInDate() {
		return inDate;
	}
	public Date getOutDate() {
		return outDate;
	}
	public BigDecimal getDeposit() {
		return deposit;
	}
	public String getContractorName() {
		return contractorName;
	}
	public String getContractorPID() {
		return contractorPID;
	}
	public List<SubmitData> getDatas() {
		return datas;
	}
	public User getAgent() {
		return agent;
	}
	public User getUser() {
		return user;
	}
    
}
