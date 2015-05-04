/**
 * 
 */
package com.fj.modules.house.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.dao.SeeHouseDao;
import com.fj.modules.house.entity.SeeHouse;
import com.fj.modules.sys.entity.User;

/**
 * 看房清单Service
 * @author caimingqin
 * @version 2015-04-28
 */
@Service
@Transactional(readOnly = true)
public class SeeHouseService extends CrudService<SeeHouseDao, SeeHouse> {

	@Autowired
	private SeeHouseDao seeHouseDao;
	public SeeHouse get(String id) {
		return super.get(id);
	}
	
	public List<SeeHouse> findList(SeeHouse seeHouse) {
		return super.findList(seeHouse);
	}
	
	public Page<SeeHouse> findPage(Page<SeeHouse> page, SeeHouse seeHouse) {
		return super.findPage(page, seeHouse);
	}
	
	@Transactional(readOnly = false)
	public void save(SeeHouse seeHouse) {
		super.save(seeHouse);
	}
	
	@Transactional(readOnly = false)
	public void delete(SeeHouse seeHouse) {
		super.delete(seeHouse);
	}

	public List<SeeHouse> findListByUser(User user) {
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("userId", user.getId());
		return seeHouseDao.search(params);
	}
	
}