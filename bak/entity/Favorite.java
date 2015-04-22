package com.fj.modules.house.entity;

import java.util.ArrayList;
import java.util.List;

import com.fj.common.persistence.DataEntity;

/**
 * 收藏夹
 * @author Administrator
 *
 */
public class Favorite extends DataEntity<Favorite> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2063237189276029392L;
	private List<House> houses=new ArrayList<House>();
	public List<House> getHouses() {
		return houses;
	}
	
}
