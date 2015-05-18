package com.fj.common.web;

public class Result {

	public static final String STATUS_IS_FAIL="fail";
	public static final String STATUS_IS_SUCCESS="success";
	private String status;
	private String msg;
	private Object content;
	
	public Result() {
	}

	private Result(String status) {
		this.status = status;
	}

	public static Result success(){
		return new Result(Result.STATUS_IS_SUCCESS);
	}
	public static Result fail(){
		return new Result(Result.STATUS_IS_FAIL);
	}

	public String getStatus() {
		return status;
	}

	public String getMsg() {
		return msg;
	}

	public Result msg(String msg) {
		this.msg = msg;
		return this;
	}

	public Object getContent() {
		return content;
	}

	public Result content(Object content) {
		this.content = content;
		return this;
	}
	
}
