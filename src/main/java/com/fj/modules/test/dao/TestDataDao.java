/**
 * 
 */
package com.fj.modules.test.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.test.entity.TestData;

/**
 * testDAO接口
 * @author caimingqin
 * @version 2015-04-26
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}