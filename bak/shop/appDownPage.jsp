<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>APP下载-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/down.css">
<style>body{background:#fff}</style>
</head>
<body>

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>

<div class="Down">
	<div class="Rw">
		<p class="code">爱屋吉屋下载二维码扫描</p>
		<p class="send" onclick="SendTo()">免费发送到手机</p>
		<a href="https://itunes.apple.com/cn/app/ai-wu-ji-wu-zhuan-ye-zu-fang/id892740126?mt=8" target="_blank" class="iPhone"  onclick="_hmt.push(['_trackEvent', 'software', 'download', 'i_iphone'])">爱屋吉屋iPhone载</a>
		<a href="http://www.iwjw.com/androidDwon.action" target="_blank" class="Android" onclick="_hmt.push(['_trackEvent', 'software', 'download', 'm_android']);">爱屋吉屋Android下载</a>
	</div>
</div>
<img src="${st}/images/Down2.jpg" alt="爱屋吉屋服务流程" style="display:block;margin:60px auto 58px">


<!-- <div class="Foot">
	<p class="bd2"></p>
	<div class="Rw">
		<p class="US"><i class="tel">热线：<b>400-700-6622</b>(早9:00 ~ 晚9:00)</i> <i class="mail">邮箱：<b>cs@iwjw.com</b></i>
			<i>
				<a href="http://wpa.qq.com/msgrd?V=1&uin=1751109085&Site=房界&Menu=yes" target="_blank" class="iconfont qq">&#xe638;</a>
				<i class="wx iconfont">&#xe63a;<b></b></i>
				<a href="http://weibo.com/u/5132568692/home?wvr=5" target="_blank" class="iconfont">&#xe639;</a>
			</i>
		</p>
	</div>
	&copy;2014-2015  满懿（上海）房地产咨询有限公司.&nbsp;&nbsp;All right reserved. <a href="http://www.miitbeian.gov.cn" rel="nofollow" target="_blank">沪ICP备14020180</a>
</div> -->
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
<div style="display:none">	
	<!--<script src="http://resource.iwjw.com/2.2/${st}/js/foot.js"></script>-->
	<script type="text/javascript">
	//<!-- 百度统计 -->
		
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?3a10bbf8b4afa9e5ab91d66b6944e813";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
	
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd9c1d8c1576dcc0f1aa537eb3b3e5830' type='text/javascript'%3E%3C/script%3E"));
	
	
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F9d413a8e18eff3d12181e53c4fa289cf' type='text/javascript'%3E%3C/script%3E"));
	
	//<!-- 其他统计 -->
	var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000539121'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1000539121' type='text/javascript'%3E%3C/script%3E"));
	
</script>
</div>
</body>
</html>
