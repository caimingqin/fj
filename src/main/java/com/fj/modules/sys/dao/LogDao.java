/**
 * 
 */
package com.fj.modules.sys.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.sys.entity.Log;

/**
 * 日志DAO接口
 * @author 
 * @version 2014-05-16
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
