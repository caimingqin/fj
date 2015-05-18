package com.fj.common.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fj.modules.gen.entity.GenTemplate;
import com.fj.modules.gen.util.GenUtils;
import com.fj.modules.sys.dao.DictDao;
import com.fj.modules.sys.entity.Dict;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-context.xml"})
public class FreeMarkersTest {
	@Autowired
	private DictDao dictDao;
    @Test
	public void test(){
    	String file="/other/dict.xml";
    	GenTemplate template = GenUtils.fileToObject(file, GenTemplate.class);
    	
    	List<Dict> findAllList = dictDao.findAllList(new Dict());
    	System.out.println("size=======>>"+findAllList.size());
    	Map<String, Object> model=new HashMap<String, Object>();
    	model.put("className", "Constant");
    	model.put("dicts", findAllList);
    	String content = FreeMarkers.renderString(template.getContent(), model);
    	System.out.println(content);
        FileUtils.writeToFile("G:/tpl/Constant.java", content, false);
		
	}
}
