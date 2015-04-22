package com.fj.modules.house.entity;

import com.fj.common.persistence.DataEntity;
import com.fj.modules.sys.entity.User;

/**
 * 评价
 * @author Administrator
 *
 */
public class Review extends DataEntity<Review> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3272533281410360653L;
	/** 评价人   */
	private User user;
	/** 评分     */
	private Float score;
	/** 评价内容  */
	private String content;
	/** 被评价人 */
	private User agent;
	/** 是否显示  */
	private Boolean isShow;
	public User getUser() {
		return user;
	}
	public Float getScore() {
		return score;
	}
	public String getContent() {
		return content;
	}
	public User getAgent() {
		return agent;
	}
	public Boolean getIsShow() {
		return isShow;
	}
	
	
}
