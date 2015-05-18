/**
 * 
 */
package com.thinkgem.jeesite.modules.test.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.test.entity.TestData;

/**
 * 单表生成DAO接口
 * @author ThinkGem
 * @version 2015-05-14
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}