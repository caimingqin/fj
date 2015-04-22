/**
 * 
 */
package com.fj.modules.test.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.test.entity.TestDataMain;

/**
 * 主子表生成DAO接口
 * @author ThinkGem
 * @version 2015-03-30
 */
@MyBatisDao
public interface TestDataMainDao extends CrudDao<TestDataMain> {
	
}