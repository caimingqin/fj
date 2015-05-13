package com.fj.common.utils;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class CodeCreator {

	private NumberFormat formatter = new DecimalFormat("00000000");
	private static final Map<String,CodeCreator> ccMap = new HashMap<String,CodeCreator>();
	public static final String DEFAULT = "Default";
	private Type type = Type.NORMAL;
	private CodeValue codeValue = null;
	
	public static final String DEFAULT_ZERRO = "00000000";
	
	static{
		ccMap.put(DEFAULT,new CodeCreator());
	}
	
	public enum Type{
		NORMAL,NO_DATE
	}
	
	private CodeCreator(){
	}
	
	public static CodeCreator get(){
		return ccMap.get(DEFAULT);
	}
	
	public static boolean regist(String key,String zeros,Type type){
		NumberFormat formatter = new DecimalFormat(zeros);
		CodeCreator cc = new CodeCreator();
		cc.formatter = formatter;
		cc.type  = type;
		ccMap.put(key,cc);
		return ccMap.containsKey(key);
	}
	
	public static boolean regist(String key,Type type){
		NumberFormat formatter = new DecimalFormat(DEFAULT_ZERRO);
		return CodeCreator.regist(key,formatter,type);
	}	
	
	public static boolean regist(String key){
		return regist(key,Type.NORMAL);
	}		
	
	public static boolean regist(String key,NumberFormat fd,Type type){
		CodeCreator cc = new CodeCreator();
		cc.formatter = fd;
		cc.type  = type;
		ccMap.put(key,cc);
		return ccMap.containsKey(key);
	}		
	
	public static CodeCreator get(String key){
		return ccMap.get(key);
	}

	public void add(Date lastDate,String lastCode,String startChar){
		this.codeValue = createCodeValue(lastDate,lastCode,startChar);
		this.createCode();
	}
	
	public void add(Date lastDate){
		String lastCode = format(new Long(1));
		this.add(lastDate, lastCode,null);
	}
	
//	public void init(){
//		String lastCode = format(new Long(1));
//		this.add(new Date(), lastCode,null);
//	}	
	

	public void add(Date lastDate,String lastCode){
		this.add(lastDate, lastCode,null);
	}

	public CodeValue createCodeValue(Date lastDate, String lastCode,String strChar) {
		Date date = new Date();
		if(date.after(lastDate)
				|| (lastCode == null 
				|| "".equalsIgnoreCase(lastCode) 
				|| lastCode.length()<1)){
			return new CodeValue(date,new Long(0),strChar);
		}
		Long id = this.parseCode(lastCode);
		id = id+1;
		return new CodeValue(lastDate,id,strChar);
	}

	public synchronized String  createCode() {
		Long lastId = codeValue.value.getAndAdd(1);
		String sLastId = format(lastId);
		DateFormat yyyymmdd = new SimpleDateFormat("yyyyMMdd");
		String s = yyyymmdd.format(codeValue.currentDate);
		StringBuffer sb = new StringBuffer();
		if(codeValue.startChar != null){
			sb.append(codeValue.startChar);
		}
		if(Type.NORMAL.equals(this.type)){
			sb.append(s);
		}
		sb.append(sLastId);
		return sb.toString();	
	}
	
	public String format(Long id){
		return formatter.format(id);
	}
	
	private Long parseCode(String code) {
		int statrIndex = code.length()-formatter.getMinimumIntegerDigits();
		String sCode = code.substring(statrIndex,code.length());
		try {
			Number res = formatter.parse(sCode);
			return res.longValue();
		} catch (ParseException e) {
			throw new IllegalArgumentException("convert code to id error["+e.getMessage()+"]");
		}
	}

	
	public class CodeValue{
	
		private Date currentDate;
		private AtomicLong value = new AtomicLong(0);
		private String startChar;
		
		public CodeValue(Date lastDate,Long id,String startChar){
			this.currentDate = lastDate;
			this.value.set(id);
			this.startChar = startChar;
		}
	}

}
