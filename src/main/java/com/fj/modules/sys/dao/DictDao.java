/**
 * 
 */
package com.fj.modules.sys.dao;

import java.util.List;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.sys.entity.Dict;

/**
 * 字典DAO接口
 * @author 
 * @version 2014-05-16
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
