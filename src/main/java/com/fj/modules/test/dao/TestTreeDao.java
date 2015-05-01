/**
 * 
 */
package com.fj.modules.test.dao;

import com.fj.common.persistence.TreeDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author moonkingcai
 * @version 2015-03-30
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}