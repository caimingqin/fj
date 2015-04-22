/**
 * 
 */
package com.fj.modules.cms.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.cms.entity.Site;

/**
 * 站点DAO接口
 * @author 
 * @version 2013-8-23
 */
@MyBatisDao
public interface SiteDao extends CrudDao<Site> {

}
