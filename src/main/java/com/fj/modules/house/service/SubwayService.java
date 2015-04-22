/**
 * 
 */
package com.fj.modules.house.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.service.TreeService;
import com.fj.common.utils.StringUtils;
import com.fj.modules.house.entity.Subway;
import com.fj.modules.house.dao.SubwayDao;

/**
 * 保存Service
 * @author caimingqin
 * @version 2015-04-12
 */
@Service
@Transactional(readOnly = true)
public class SubwayService extends TreeService<SubwayDao, Subway> {

	public Subway get(String id) {
		return super.get(id);
	}
	
	public List<Subway> findList(Subway subway) {
		if (StringUtils.isNotBlank(subway.getParentIds())){
			subway.setParentIds(","+subway.getParentIds()+",");
		}
		return super.findList(subway);
	}
	
	@Transactional(readOnly = false)
	public void save(Subway subway) {
		super.save(subway);
	}
	
	@Transactional(readOnly = false)
	public void delete(Subway subway) {
		super.delete(subway);
	}
	
}