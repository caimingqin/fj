/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.persistence.Page;
import com.fj.common.service.CrudService;
import com.fj.modules.house.entity.Trust;
import com.fj.modules.house.dao.TrustDao;

/**
 * 房东在线委托Service
 * @author caimingqin
 * @version 2015-04-27
 */
@Service
@Transactional(readOnly = true)
public class TrustService extends CrudService<TrustDao, Trust> {

	public Trust get(String id) {
		return super.get(id);
	}
	
	public List<Trust> findList(Trust trust) {
		return super.findList(trust);
	}
	
	public Page<Trust> findPage(Page<Trust> page, Trust trust) {
		return super.findPage(page, trust);
	}
	
	@Transactional(readOnly = false)
	public void save(Trust trust) {
		super.save(trust);
	}
	
	@Transactional(readOnly = false)
	public void delete(Trust trust) {
		super.delete(trust);
	}
	
}