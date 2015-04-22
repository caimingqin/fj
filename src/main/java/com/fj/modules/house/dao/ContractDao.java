/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Contract;

/**
 * 合同管理DAO接口
 * @author caimingqin
 * @version 2015-04-21
 */
@MyBatisDao
public interface ContractDao extends CrudDao<Contract> {
	
}