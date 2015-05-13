package fj.http;

import java.nio.charset.Charset;

import org.junit.Test;

public class ConvertTest {

	@Test
	public void test(){
		Charset c = Charset.forName("UTF-8");
		String str = new String("\u6b63\u5728\u63d0\u4ea4".getBytes(),c);
		System.out.println(str);
	}
}
