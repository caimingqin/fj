/**
 * 
 */
package com.fj.modules.gen.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author 
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
