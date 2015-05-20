package com.fj.modules.house.web.mobile;

import java.util.HashMap;
import java.util.Map;

public class EntityTableMapper {

	private static Map<String, String> map=new HashMap<String, String>();
	static{
		map.put("House", "shop_house");
		map.put("User", "shop_user");
	}
	
	public static String get(String entityName){
		return map.get(entityName);
	}
}
