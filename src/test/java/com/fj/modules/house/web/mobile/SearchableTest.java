package com.fj.modules.house.web.mobile;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.ArrayUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;

import com.fj.common.mapper.JsonMapper;
import com.fj.common.utils.StringUtils;
import com.fj.modules.house.entity.House;


//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath:/spring-context.xml"})
//@ActiveProfiles("development")
public class SearchableTest {

	@Autowired
	private JdbcTemplate jt;
	/**
	 *查询的封装
	 */
	@Test
	public void test(){
		Searchable searchable = new Searchable();
		searchable.setEntity("House");
//		searchable.setConditions("rentprice#eq#3000");
//		searchable.setConditions("rentprice#eq#3000;user{id#eq#aaa}");
		searchable.setConditions("rentprice#eq#3000;user{id#eq#aaa;name#eq#caimingqin}");

		/*
		 select * from shop_house a 
		 left join sys_user u 
		 on a.user_id=u.id 
		 where a.user_id=? and a.rentprice=? 
		*/
//		searchable.setSorts("rentprice@desc;createDate@desc");
//		searchable.setFilters("G#id#name#rentprice#user{id;name;office{id;name}}#area{id;name}");
		searchable.setFilters("G#id#name#floor#user{id;name}");
		
		//获取实体属性名及对应的类型
		Map<String, Class<?>> fieldMap=getFields(House.class);
		
		//第一步 根据过滤条件构造实体bean
		String filters = searchable.getFilters();
		Map<String, Class<?>> propertyMap=getFields(House.class);
		final Map<String, Class<?>> myPropertyMap=new HashMap<String, Class<?>>();
		if(filters!=null&&filters.contains("#")){
			String[] filterArr = filters.split("#");
			String filterType=filterArr[0];
			String[] fields=ArrayUtils.subarray(filterArr, 1, filterArr.length);
			if(filterType.equalsIgnoreCase("G")){
				for(String field:fields){
				   if(fieldMap.containsKey(field)){
					   myPropertyMap.put(field,fieldMap.get(field));
				   }else{
					   throw new IllegalArgumentException("找不到属性"+field);
				   }
				}
			  }
		}
//		 final CglibBean bean = new CglibBean(myPropertyMap);    
		
		 Set<String> keySet = myPropertyMap.keySet();
		 String fieldSql = StringUtils.join(keySet.toArray(), ",");
		 System.out.println("fieldSql:"+fieldSql);
		//根据条件生成查询语句
		 String conditionStr= searchable.getConditions();
		 System.out.println("conditionStr:"+conditionStr);
		 List<Condition> cList=new ArrayList<Condition>();
		 if(StringUtils.isNotBlank(conditionStr)){
			 String[] cds = conditionStr.split(";");
			 for(String cd:cds){
				 if(cd.contains("{")){
					 //user{id#eq#aaa}
//					 cd.substring(0, cd.indexOf("{"))
//					 String field=result[0];
//					 String type=result[1];//操作类型
//					 String value=result[2];
//					 cList.add(Condition.create(field, type, value)); 
				 }else{
					 String[] result = cd.split("#");
					 String field=result[0];
					 String type=result[1];//操作类型
					 String value=result[2];
					 cList.add(Condition.create(field, type, value)); 
				 }
				
			 }
		 }
		 //拼接SQL
		 StringBuilder sqlBuilder = new StringBuilder("select "+fieldSql+" from shop_house where 1=1");
		  for(Condition cd:cList){
			  sqlBuilder.append(" and ").append(cd.getField()).append(cd.getType()).append(cd.getValue());
		  }
		  
		 System.out.println(sqlBuilder.toString());
		 //组装结果返回
		  final List<Object> list=new ArrayList<Object>();
		 jt.query(sqlBuilder.toString(),new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
//				CglibBean mBean = new CglibBean(myPropertyMap);
			    Set<String> keySet2 = myPropertyMap.keySet();
			    Map<String, Object> map=new HashMap<String, Object>();
			    for(String key:keySet2){
			    	System.out.println(key+"="+ rs.getString(key));
			    	map.put(key, rs.getString(key));
//			    	mBean.setValue(key, );
			    }
			    list.add(map);
			}
		});
//		 List query = jt.query(sqlBuilder.toString(),new BeanPropertyRowMapper(bean.getClass()));
		 System.out.println(JsonMapper.toJsonString(list));
		
	}
	
	public Map<String, Class<?>> getFields(Class<?> clazz){
		Map<String, Class<?>> allFileds=new HashMap<String, Class<?>>();
		Field[] declaredFields = clazz.getDeclaredFields();
	   for(Field f:declaredFields){
			Class<?> type = f.getType();
			System.out.println(f.getName()+"="+type);
			allFileds.put(f.getName(), f.getType());
		}
		
		Class<?> superclass = clazz.getSuperclass();
		while(superclass != null){
			Field[] declaredFields2 = superclass.getDeclaredFields();
			for(Field f:declaredFields2){
				Class<?> type = f.getType();
				System.out.println(f.getName()+"="+type);
				allFileds.put(f.getName(), f.getType());
			}
			superclass = superclass.getSuperclass();
		}
	
		System.out.println(JsonMapper.toJsonString(allFileds));
		
		return allFileds;
	}
	@Test
	public void test2() throws ClassNotFoundException{
		
	      // 设置类成员属性   
        //user 
        Map<String,Class<?>> userPropertyMap =new HashMap<String, Class<?>>();    
        userPropertyMap.put("id",String.class);
        userPropertyMap.put("name", String.class);
        userPropertyMap.put("addrs", String[].class);
        CglibBean userBean = new CglibBean(userPropertyMap);    
        userBean.setValue("id", "userid");
        userBean.setValue("name", "username");
        userBean.setValue("addrs", new String[]{"北京01","北京地址2"});
      
        Map<String,Class<?>> propertyMap =new HashMap<String, Class<?>>();    
        propertyMap.put("id", Integer.class);    
        propertyMap.put("name",String.class);    
        propertyMap.put("address", String.class);   
        propertyMap.put("user", userBean.getObject().getClass());   
        
        // 生成动态 Bean    
        CglibBean bean = new CglibBean(propertyMap);    
    
        // 给 Bean 设置值    
        bean.setValue("id", new Integer(123));    
        bean.setValue("name", "454");    
        bean.setValue("address", "789");   
        bean.setValue("user", userBean.getObject());
        // 从 Bean 中获取值，当然了获得值的类型是 Object    
        System.out.println("  >> id      = " + bean.getValue("id"));    
        System.out.println("  >> name    = " + bean.getValue("name"));    
        System.out.println("  >> address = " + bean.getValue("address"));    
        // 获得bean的实体    
        Object object = bean.getObject();    
        System.out.println(JsonMapper.toJsonString(object));
        // 通过反射查看所有方法名    
        Class clazz = object.getClass();    
        Method[] methods = clazz.getDeclaredMethods();    
        for (int i = 0; i < methods.length; i++) {    
            System.out.println(methods[i].getName());    
        }    
	}
	
	private List<Condition> getConditons(Searchable searchable){
		String conditionStr= searchable.getConditions();
		 System.out.println("conditionStr:"+conditionStr);
		 List<Condition> cList=new ArrayList<Condition>();
		 if(StringUtils.isNotBlank(conditionStr)){
			 String[] cds = conditionStr.split(";");
			 for(String cdStr:cds){
				 if(cdStr.contains("{")){
					 String entityName = cdStr.substring(0, cdStr.indexOf("{"));
					 String cdPart = cdStr.substring( cdStr.indexOf("{")+1,cdStr.lastIndexOf("}"));
					 System.out.println(entityName);
					 System.out.println(cdPart);
					 String[] cdss = cdPart.split(",");
					 for(String c:cdss){
							 String[] result = c.split("#");
							 String field=result[0];
							 String type=result[1];//操作类型
							 String value=result[2];
							 cList.add(Condition.create(entityName+"_"+field, type, value)); 
					 }
				 }else{
					 String[] result = cdStr.split("#");
					 String field=result[0];
					 String type=result[1];//操作类型
					 String value=result[2];
					 cList.add(Condition.create(field, type, value)); 
				 }
				
			 }
		 }
		 System.out.println(JsonMapper.toJsonString(cList));
		return cList;
	}
	@Test
	public void testSub(){
/*		 String cdStr="user{id#eq#aaa;age#eq#18}";
		 String entityName = cdStr.substring(0, cdStr.indexOf("{"));
		 String cdPart = cdStr.substring( cdStr.indexOf("{")+1,cdStr.lastIndexOf("}"));
		 System.out.println(entityName);
		 System.out.println(cdPart);
		 String[] cds = cdPart.split(";");
		 List<Condition> cList=new ArrayList<Condition>();
		 for(String c:cds){
				 String[] result = c.split("#");
				 String field=result[0];
				 String type=result[1];//操作类型
				 String value=result[2];
				 cList.add(Condition.create(entityName+"_"+field, type, value)); 
		 }*/
		 
			Searchable searchable = new Searchable();
			searchable.setEntity("House");
			searchable.setConditions("rentprice#eq#3000;user{id#eq#aaa,name#eq#caimingqin}");//where join 语句
			searchable.setFilters("G#id#name#floor#user{id,name}");
			searchable.setSorts("rentprice@desc;createDate@desc");
			getConditons(searchable);
			getJoins(searchable);
			getSorts(searchable);
		 /*
		 select shop_house.id,shop_house.name,sys_user.id as userId,sys_user.name as userName from shop_house  
		 left join sys_user  
		 on shop_house.user_id=sys_user.id and sys_user.name=shop_house.user_name
		 where shop_house.user_id=? and shop_house.rentprice=? and shop_house.user_name=?
		  order by shop_house.rentprice desc , shop_house.createDate desc
		*/
		

	}

	private List<Sort>  getSorts(Searchable searchable) {
		String sortStr = searchable.getSorts();
		String[] sorts = sortStr.split(";");
		List<Sort> sortList=new ArrayList<Sort>();
		for(String s:sorts){
			String[] sArray = s.split("@");
			Sort sort = new Sort();
			sort.setEntity(searchable.getEntity());
			sort.setField(sArray[0]);
			sort.setType(sArray[1]);
			sortList.add(sort);
		}
		 System.out.println(JsonMapper.toJsonString(sortList));
		return sortList;
	}

	private void getJoins(Searchable searchable) {
		String conditionStr = searchable.getConditions();
		 System.out.println("conditionStr:"+conditionStr);
		 List<Join> cList=new ArrayList<Join>();
		 if(StringUtils.isNotBlank(conditionStr)){
			 String[] cds = conditionStr.split(";");
			 for(String cdStr:cds){
				 if(cdStr.contains("{")){
//					 	 left join sys_user   on shop_house.user_id=sys_user.id and sys_user.name=shop_house.user_name
					 String entityName = cdStr.substring(0, cdStr.indexOf("{"));
					 String cdPart = cdStr.substring( cdStr.indexOf("{")+1,cdStr.lastIndexOf("}"));
					 System.out.println(entityName);
					 System.out.println(cdPart);
					 String[] cdss = cdPart.split(",");
					 for(String c:cdss){
							 String[] result = c.split("#");
							 String field=result[0];
							 String type=result[1];//操作类型
							 String value=result[2];
							 Join join = new Join();
							 join.setJoinEntity(searchable.getEntity());
							 join.setEntity(entityName);
							 join.setField(field);
							 join.setType(type);
							 cList.add(join); 
					 }
				 }
				
			 }
		 }
		 
		 System.out.println(JsonMapper.toJsonString(cList));
	}
}
