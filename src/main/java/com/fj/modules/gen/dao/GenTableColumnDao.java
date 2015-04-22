/**
 * 
 */
package com.fj.modules.gen.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.gen.entity.GenTable;
import com.fj.modules.gen.entity.GenTableColumn;

/**
 * 业务表字段DAO接口
 * @author 
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableColumnDao extends CrudDao<GenTableColumn> {
	
	public void deleteByGenTable(GenTable genTable);
}
