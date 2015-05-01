package fj.http;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class HttpTest {

	
	 /** 
     * 发送 get请求 
     */  
	@Test
    public   void get() {  
        CloseableHttpClient httpclient = HttpClients.createDefault();  
        try {  
            // 创建httpget.    
            HttpGet httpget = new HttpGet("https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=wxac42c501ef4433c0&corpsecret=O8FWmZnDFTrTmqlCMoFAJntoIhMFiSGXWAk9Sb1pWLnodMy7kTXlKeZWkIDxQ8-G&ptlang=2052&ADUIN=737895494&ADSESSION=1428973238&ADTAG=CLIENT.QQ.5389_.0&ADPUBNO=26441");  
            System.out.println("executing request " + httpget.getURI());  
            // 执行get请求.    
            CloseableHttpResponse response = httpclient.execute(httpget);  
            try {  
                // 获取响应实体    
                HttpEntity entity = response.getEntity();  
                System.out.println("--------------------------------------");  
                // 打印响应状态    
                System.out.println(response.getStatusLine());  
                if (entity != null) {  
                    // 打印响应内容长度    
                    System.out.println("Response content length: " + entity.getContentLength());  
                    // 打印响应内容    
                    System.out.println("Response content: " + EntityUtils.toString(entity));  
                }  
                System.out.println("------------------------------------");  
            } finally {  
                response.close();  
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (ParseException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            // 关闭连接,释放资源    
            try {  
                httpclient.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
    }  
	@Test
	public void testww(){
		String aa="|/userfiles/thinkgem/files/f01/2a5dfa955ab9419ca04340f39ec74a83_s.jpg|/userfiles/thinkgem/files/f01/b1696023c0804501ae6b35208cebf119_s.jpg|/userfiles/thinkgem/files/f01/953a4bc465ab472683c420ed60a6d73d_s.jpg|/userfiles/thinkgem/files/f01/85a78d98c39849c8a50a0fa1e1eb8091_s.jpg|/userfiles/thinkgem/files/f01/3d323696905140b2a61a0beb361ec452_s.jpg|/userfiles/thinkgem/files/f01/c1e0404f512f44389658015fb105fb02_s.jpg|/userfiles/thinkgem/files/f01/2a5dfa955ab9419ca04340f39ec74a83_s.jpg|/userfiles/thinkgem/files/f01/b1696023c0804501ae6b35208cebf119_s.jpg|/userfiles/thinkgem/files/f01/953a4bc465ab472683c420ed60a6d73d_s.jpg|/userfiles/thinkgem/files/f01/85a78d98c39849c8a50a0fa1e1eb8091_s.jpg|/userfiles/thinkgem/files/f01/3d323696905140b2a61a0beb361ec452_s.jpg|/userfiles/thinkgem/files/f01/c1e0404f512f44389658015fb105fb02_s.jpg";
//	   String aa="foo:000:001";
		String[] split = aa.split("\\|");
	   for(String s:split){
		   System.out.println(s);
	   }
	
	}
}
