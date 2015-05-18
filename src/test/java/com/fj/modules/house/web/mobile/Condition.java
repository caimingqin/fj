package com.fj.modules.house.web.mobile;

public class Condition {

	private String field;
	private String type;
	private String value;

	public Condition() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public static Condition create(String field, String type, String value) {
		Condition c = new Condition();
		c.field = field;
		c.type = ConditionTypeMapper.get(type);
		c.value = value;
		return c;
	}

	
	
}
