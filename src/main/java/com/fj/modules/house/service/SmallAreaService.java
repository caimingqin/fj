/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.dao.SmallAreaDao;

/**
 * 小区Service
 * @author caimingqin
 * @version 2015-04-12
 */
@Service
@Transactional(readOnly = true)
public class SmallAreaService extends CrudService<SmallAreaDao, SmallArea> {

	public SmallArea get(String id) {
		return super.get(id);
	}
	
	public List<SmallArea> findList(SmallArea smallArea) {
		return super.findList(smallArea);
	}
	
	public Page<SmallArea> findPage(Page<SmallArea> page, SmallArea smallArea) {
		return super.findPage(page, smallArea);
	}
	
	@Transactional(readOnly = false)
	public void save(SmallArea smallArea) {
		super.save(smallArea);
	}
	
	@Transactional(readOnly = false)
	public void delete(SmallArea smallArea) {
		super.delete(smallArea);
	}
	
}