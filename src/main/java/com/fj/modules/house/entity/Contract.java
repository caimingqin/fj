/**
 * 
 */
package com.fj.modules.house.entity;

import java.util.Date;

import org.hibernate.validator.constraints.Length;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 合同管理Entity
 * @author caimingqin
 * @version 2015-04-25
 */
public class Contract extends DataEntity<Contract> {
	
	private static final long serialVersionUID = 1L;
	private String roomerName;		// 房客姓名
	private String roomerPhone;		// 房客电话
	private String roomerPid;		// 房客身份证号
	private Long money;		// 合同价格
	private Long sum;		// 合同总价
	private Long deposit;		// 房源押金
	private Long income;		// 服务费用
	private User agent;		// 受理人
	private House house;		// 房源ID
	private Date startDate;		// 合同开始日期
	private Date endDate;		// 合同结束日期
	private String type;		// 合同类型
	
	public Contract() {
		super();
	}

	public Contract(String id){
		super(id);
	}

	@Length(min=0, max=64, message="房客姓名长度必须介于 0 和 64 之间")
	public String getRoomerName() {
		return roomerName;
	}

	public void setRoomerName(String roomerName) {
		this.roomerName = roomerName;
	}
	
	@Length(min=0, max=64, message="房客电话长度必须介于 0 和 64 之间")
	public String getRoomerPhone() {
		return roomerPhone;
	}

	public void setRoomerPhone(String roomerPhone) {
		this.roomerPhone = roomerPhone;
	}
	
	@Length(min=0, max=64, message="房客身份证号长度必须介于 0 和 64 之间")
	public String getRoomerPid() {
		return roomerPid;
	}

	public void setRoomerPid(String roomerPid) {
		this.roomerPid = roomerPid;
	}
	
	public Long getMoney() {
		return money;
	}

	public void setMoney(Long money) {
		this.money = money;
	}
	
	public Long getSum() {
		return sum;
	}

	public void setSum(Long sum) {
		this.sum = sum;
	}
	
	public Long getDeposit() {
		return deposit;
	}

	public void setDeposit(Long deposit) {
		this.deposit = deposit;
	}
	
	public Long getIncome() {
		return income;
	}

	public void setIncome(Long income) {
		this.income = income;
	}
	
	public User getAgent() {
		return agent;
	}

	public void setAgent(User agent) {
		this.agent = agent;
	}
	
	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	@Length(min=0, max=64, message="合同类型长度必须介于 0 和 64 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}