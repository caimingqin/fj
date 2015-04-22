/**
 * 
 */
package com.fj.modules.house.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.house.entity.Order;

/**
 * 订单管理DAO接口
 * @author caimingqin
 * @version 2015-04-13
 */
@MyBatisDao
public interface OrderDao extends CrudDao<Order> {
	
}