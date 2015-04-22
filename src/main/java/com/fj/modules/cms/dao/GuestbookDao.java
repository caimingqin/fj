/**
 * 
 */
package com.fj.modules.cms.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.cms.entity.Guestbook;

/**
 * 留言DAO接口
 * @author 
 * @version 2013-8-23
 */
@MyBatisDao
public interface GuestbookDao extends CrudDao<Guestbook> {

}
