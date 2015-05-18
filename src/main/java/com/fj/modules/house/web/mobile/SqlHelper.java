package com.fj.modules.house.web.mobile;

import java.util.List;

public class SqlHelper {

	
	public static String where(List<Condition> conditions){
		StringBuffer whereSql = new StringBuffer();
		whereSql.append("where ");
		for(Condition cd:conditions){
			whereSql.append(cd.getField())
					.append(cd.getType())
					.append(cd.getValue())
			        .append(" and ");
		}
		return whereSql.toString();
	}
}
