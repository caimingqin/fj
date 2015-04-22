/**
 * 
 */
package com.fj.modules.cms.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fj.common.service.CrudService;
import com.fj.modules.cms.dao.ArticleDataDao;
import com.fj.modules.cms.entity.ArticleData;

/**
 * 站点Service
 * @author 
 * @version 2013-01-15
 */
@Service
@Transactional(readOnly = true)
public class ArticleDataService extends CrudService<ArticleDataDao, ArticleData> {

}
