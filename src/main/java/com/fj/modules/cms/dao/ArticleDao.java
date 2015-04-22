/**
 * 
 */
package com.fj.modules.cms.dao;

import java.util.List;

import com.fj.common.persistence.CrudDao;
import com.fj.common.persistence.annotation.MyBatisDao;
import com.fj.modules.cms.entity.Article;
import com.fj.modules.cms.entity.Category;

/**
 * 文章DAO接口
 * @author 
 * @version 2013-8-23
 */
@MyBatisDao
public interface ArticleDao extends CrudDao<Article> {
	
	public List<Article> findByIdIn(String[] ids);
//	{
//		return find("from Article where id in (:p1)", new Parameter(new Object[]{ids}));
//	}
	
	public int updateHitsAddOne(String id);
//	{
//		return update("update Article set hits=hits+1 where id = :p1", new Parameter(id));
//	}
	
	public int updateExpiredWeight();
	
	public List<Category> findStats(Category category);
//	{
//		return update("update Article set weight=0 where weight > 0 and weightDate < current_timestamp()");
//	}
	
}
