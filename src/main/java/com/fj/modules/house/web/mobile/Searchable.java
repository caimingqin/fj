package com.fj.modules.house.web.mobile;

import java.io.Serializable;


public class Searchable implements Serializable{

    //接口便捷性要求
	//统一传输协议
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//查询的表名
	private String entity;
	//条件过滤 num#eq#aaaa|num#eq#aaaa|
	private String conditions;
	//分页
	private int pageSize;
	private int pageNo;
	private int total;
	//排序   根据字段排序
	private String sorts;//type#desc|createDate#desc
	
	//根据字段过滤     通配符号*  获取指定字段， 过滤指定字段
	//规则操作符#字段     操作符有：F过滤掉那些字段，G获取指定的字段，A获取所有的字段
	private String filters;//F#remark#desc#fullName		

	public String getEntity() {
		return entity;
	}

	public void setEntity(String entity) {
		this.entity = entity;
	}

	public String getConditions() {
		return conditions;
	}

	public void setConditions(String conditions) {
		this.conditions = conditions;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getSorts() {
		return sorts;
	}

	public void setSorts(String sorts) {
		this.sorts = sorts;
	}

	public String getFilters() {
		return filters;
	}

	public void setFilters(String filters) {
		this.filters = filters;
	}
	
	
}
