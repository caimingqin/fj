package fj.http;

import java.nio.charset.Charset;

import org.junit.Test;

public class ConvertTest {

	@Test
	public void test(){
		Charset c = Charset.forName("UTF-8");
		String str = new String("\u6ce8\u518c/\u767b\u5f55".getBytes(),c);
		System.out.println(str);
	}
}
