package com.fj.modules.house.entity;

import java.util.List;

import com.fj.common.persistence.DataEntity;


/**
 * 房东
 * @author Administrator
 *
 */
public class Proprietor extends DataEntity<Proprietor> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6029610386806116867L;
	/** 姓名          */
	private String name;
	/** 电话          */
	private String tel;
	/** 性别          */
	private Gender gender;
	/** 提交的认证资料*/
	private List<SubmitData> datas;
	/** 地址          */
	private String addr;
	/** 房东房源      */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public List<SubmitData> getDatas() {
		return datas;
	}
	public void setDatas(List<SubmitData> datas) {
		this.datas = datas;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}

	
	
	
}
