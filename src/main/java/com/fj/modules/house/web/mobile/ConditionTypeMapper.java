package com.fj.modules.house.web.mobile;

import java.util.HashMap;
import java.util.Map;

public class ConditionTypeMapper {

	private static Map<String, String> mapper = new HashMap<String, String>();
    static{
    	mapper.put("eq", "=");
    }
	public static String get(String type) {
		return mapper.get(type);
	}
}
