/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.dao.HouseDao;

/**
 * 房源Service
 * @author caimingqin
 * @version 2015-04-12
 */
@Service
@Transactional(readOnly = true)
public class HouseService extends CrudService<HouseDao, House> {

	public House get(String id) {
		return super.get(id);
	}
	
	public List<House> findList(House house) {
		return super.findList(house);
	}
	
	public Page<House> findPage(Page<House> page, House house) {
		return super.findPage(page, house);
	}
	
	@Transactional(readOnly = false)
	public void save(House house) {
		super.save(house);
	}
	
	@Transactional(readOnly = false)
	public void delete(House house) {
		super.delete(house);
	}
	
}