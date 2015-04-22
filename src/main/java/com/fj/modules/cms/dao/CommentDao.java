/**
 * 
 */
package com.fj.modules.cms.dao;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.cms.entity.Comment;

/**
 * 评论DAO接口
 * @author 
 * @version 2013-8-23
 */
@MyBatisDao
public interface CommentDao extends CrudDao<Comment> {

}
