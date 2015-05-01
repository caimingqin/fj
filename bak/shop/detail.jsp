<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>时代紫芳-房界</title>
<meta name="keywords" content="房界 真房源 租客免佣">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/sellHouseDetails.css">
<script type="text/javascript" src="${st}/js/HouseDetails.js"></script>
</head>
<body>
<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw details">
	<!-- 左边 -->
	<div class="summary">
		<!-- <div id="imgSlide" class="slide" onselectstart="return false;">
		<ul>
												<li><img src="http://g4.ykimg.com/1100641F4655053DF135A61D245C5D661FD7F8-E5A6-F4AB-A921-2948E775186D" alt="" /><p class="imgInfo"><i></i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/d118fae96c6f447e8c5562cde4b701be.s.iwjw" alt="" /><p class="imgInfo"><i>厅1</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/fde0c44581dc45cbb2811b94a03592c4.s.iwjw" alt="" /><p class="imgInfo"><i>厅2</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/e374d7b655354f6083720b5223559b53.s.iwjw" alt="" /><p class="imgInfo"><i>主卧</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/3520f496f0df43438a8b9164344cc4fa.s.iwjw" alt="" /><p class="imgInfo"><i>次卧1</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/9377ff5b90e840b39d9fd08070efa442.s.iwjw" alt="" /><p class="imgInfo"><i>卫生间1</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/77202e2aa43f4d3c827c84b5e02d1cc2.s.iwjw" alt="" /><p class="imgInfo"><i>厨房</i></p></li>
																<li><img src="http://house-images-water.oss.aliyuncs.com/6d5c7eec12a5468e89ad6cbe2185ab17.s.iwjw" alt="" /><p class="imgInfo"><i>阳台</i></p></li>
									</ul>
		<span class="btncon prevBtn" style="display:none">
			<a href="javascript:void(0);" style="display:inline;"><span></span></a>
		</span>
					<span class="btncon nextBtn">
			<a href="javascript:void(0);" style="display:inline;"><span></span></a>
		</span>
					</div>-->

		<!-- 图片轮播 -->
		<div id="imgSlide" class="slide" onselectstart="return false;">
			<div class="bimgs">
				<!--视频播放器-->
				<div id="sellYoukuplayer"></div>
				<ul>
												            				            					<li><img src="http://g4.ykimg.com/1100641F4655053DF135A61D245C5D661FD7F8-E5A6-F4AB-A921-2948E775186D" alt="">
									<p class="imgInfo">
										<i></i>
										<i class="imgNum">1/8</i>									</p>
																			    									<!--视频按钮-->
    									<i class="iconfont videoBtn" code="XOTEyNDc3NDQ4"><img src="http://resource.iwjw.com/2.2/cache/img/videoBtn.png"></i>
    									    																										</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/d118fae96c6f447e8c5562cde4b701be.s.iwjw" alt="">
									<p class="imgInfo">
										<i>厅1</i>
										<i class="imgNum">2/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/fde0c44581dc45cbb2811b94a03592c4.s.iwjw" alt="">
									<p class="imgInfo">
										<i>厅2</i>
										<i class="imgNum">3/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/e374d7b655354f6083720b5223559b53.s.iwjw" alt="">
									<p class="imgInfo">
										<i>主卧</i>
										<i class="imgNum">4/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/3520f496f0df43438a8b9164344cc4fa.s.iwjw" alt="">
									<p class="imgInfo">
										<i>次卧1</i>
										<i class="imgNum">5/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/9377ff5b90e840b39d9fd08070efa442.s.iwjw" alt="">
									<p class="imgInfo">
										<i>卫生间1</i>
										<i class="imgNum">6/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/77202e2aa43f4d3c827c84b5e02d1cc2.s.iwjw" alt="">
									<p class="imgInfo">
										<i>厨房</i>
										<i class="imgNum">7/8</i>									</p>
																	</li>
								            				            			            				            					<li><img src="http://house-images-water.oss.aliyuncs.com/6d5c7eec12a5468e89ad6cbe2185ab17.s.iwjw" alt="">
									<p class="imgInfo">
										<i>阳台</i>
										<i class="imgNum">8/8</i>									</p>
																	</li>
								            				            							</ul>
				<span class="larr"><i class="bg"></i><i class="iconfont">&#xe620;</i></span>
				<span class="rarr"><i class="bg"></i><i class="iconfont">&#xe628;</i></span>
			</div>
			<div class="simgs">
				<div class="sm">
					<ul>						            				            					<li class="hPic">
									<img src="http://g4.ykimg.com/1100641F4655053DF135A61D245C5D661FD7F8-E5A6-F4AB-A921-2948E775186D" alt="" />
																		<!--视频按钮-->
									<i class="iconfont videoBtn small" code="XOTEyNDc3NDQ4"><img src="http://resource.iwjw.com/2.2/cache/img/videoBtn.png"></i>
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/d118fae96c6f447e8c5562cde4b701be.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/fde0c44581dc45cbb2811b94a03592c4.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/e374d7b655354f6083720b5223559b53.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/3520f496f0df43438a8b9164344cc4fa.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/9377ff5b90e840b39d9fd08070efa442.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/77202e2aa43f4d3c827c84b5e02d1cc2.s.iwjw" alt="" />
																	</li>
								            				            			            				            					<li class="hPic">
									<img src="http://house-images-water.oss.aliyuncs.com/6d5c7eec12a5468e89ad6cbe2185ab17.s.iwjw" alt="" />
																	</li>
								            				            								</ul>
				</div>
				<span class="larr"><i class="bg"></i><i class="iconfont">&#xe63e;</i></span>
				<span class="rarr"><i class="bg"></i><i class="iconfont">&#xe63d;</i></span>
			</div>
		</div>

		<div class="infos">


			<!-- 配套设备 -->
			
			<!--小区信息-->
			<div class="bl area">
				<div class="tit">小区信息</div>
				<p>
					<span><i class="pname">小&nbsp;&nbsp;区&nbsp;&nbsp;名： </i>时代紫芳</span>
				</p>
				<p>
					<span><i class="pname">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址： </i>北京市丰台区紫芳园一区</span>
				</p>
				<p>
					<span><i class="pname">建造年代： </i>2001 年</span>
					<span class="sec"><i class="pname">容积率： </i>2 </span>
				</p>

				<p>
					<span><i class="pname">区域板块： </i>丰台 - 方庄</span>
					<span class="sec"><i class="pname">绿化率： </i>25 %</span>
				</p>
			</div>

			<!--周边配套-->
			<div class="bl noborder">
				<p class="tit">周边配套</p>
				<div class="zbh">
															<p><i>中小学：</i>
												北京四中璞瑅学校小学部
												北京四中璞瑅学校小学部
											</p>
									</div>
				<div class="zbMapAll">
					<div class="sHead">
						<a class="hover">交通</a>
						<a>教育</a>
						<a>医疗</a>
						<a>商业</a>
						<i></i>
					</div>
					<!-- 地图放大缩小按钮 -->
					<div class="zoomBtn" onselectstart="return false;">
						<a id="bzoom">+</a>
						<p></p>
						<a id="szoom">-</a>
					</div>
					<div id="zbMap" param-data={"lng":"116.449874","lat":"39.869734"}></div>
					<div id="seaResult">
						<dl>
							<!--查询结果列表-->
						</dl>
					</div>
				</div>
			</div>




		</div>
	</div>

	<!-- 右边 -->
	<div class="Fr detailInfo">
		 <div id="slideWrap" >
			<div class="titles">
    			<p class="h3" title="时代紫芳 8号">时代紫芳</p>
    			<p class="area">丰台 - 方庄</p>
			</div>

			<p class="housePrice">
				<i class="price">6000</i> 元/月
				<i class="Ltime"> 今日发布 </i>
			</p>
			<p class="line"></p>
			<p class="houseType">
				<i class="pname">房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型： </i>
				3室2厅1卫</p>
			<p>
				<i class="pname">面&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;积： </i>
				 94m²</p>

			<p><i class="pname">楼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;层： </i>高层 </p>
			<p><i class="pname">装&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修： </i>普装</p>
			<p><i class="pname">入住时间： </i>3月16号后可入住</p>
			<p class="houseRentDate  iconBag"></p>





			<p class="btns">

									<button class="sellBtnView1">预约中</button>
								   <button class="sellBtnFav" data-id="NENvQCgXOuE" title="收藏"><i class="iconfont ">&#xe616;</i></button>
			</p>
		</div>
	</div>
	<!--同小区房源-->

		<div id="sameAreaHouses" class="Fr">
		<p class="tit">同小区房源<a href="http://www.iwjw.com/chuzu/list/?kw=%E6%97%B6%E4%BB%A3%E7%B4%AB%E8%8A%B3" title="更多" target="_blank">更多&gt;</a></p>
		<ol>
							    			<li>
    				<a class="imga hPic" href="http://www.iwjw.com/chuzu/Ck8fUWvYjW8/?from=3010&cs=beijing" target="_blank"  title="时代紫芳">
    					<img src="http://house-images-water.oss.aliyuncs.com/d24c1ad808e748d5af36e891028ad363.t">
												    				</a>
    				<div>
    					<p class="p1"><a href="http://www.iwjw.com/chuzu/Ck8fUWvYjW8/?from=3010&cs=beijing" target="_blank">3室2厅</a></p>
    					<p class="p2">178m²<i class="ll">|</i>低层</p>
    					<p class="p3"><i>11000</i> 元/月</p>
    				</div>
    			</li>
				    			<li>
    				<a class="imga hPic" href="http://www.iwjw.com/chuzu/MCrvHE2tCzA/?from=3010&cs=beijing" target="_blank"  title="时代紫芳">
    					<img src="http://house-images-water.oss.aliyuncs.com/53c1eea4696a40f68bd8225a4e2dc413.t">
												    				</a>
    				<div>
    					<p class="p1"><a href="http://www.iwjw.com/chuzu/MCrvHE2tCzA/?from=3010&cs=beijing" target="_blank">2室2厅</a></p>
    					<p class="p2">122m²<i class="ll">|</i>低层</p>
    					<p class="p3"><i>9500</i> 元/月</p>
    				</div>
    			</li>
				    			<li>
    				<a class="imga hPic" href="http://www.iwjw.com/chuzu/d4f46_lQSGY/?from=3010&cs=beijing" target="_blank"  title="时代紫芳">
    					<img src="http://house-images-water.oss.aliyuncs.com/d24c1ad808e748d5af36e891028ad363.t">
												    				</a>
    				<div>
    					<p class="p1"><a href="http://www.iwjw.com/chuzu/d4f46_lQSGY/?from=3010&cs=beijing" target="_blank">2室1厅</a></p>
    					<p class="p2">76m²<i class="ll">|</i>低层</p>
    					<p class="p3"><i>4500</i> 元/月</p>
    				</div>
    			</li>
				    			<li>
    				<a class="imga hPic" href="http://www.iwjw.com/chuzu/Z9mzhwEYPPQ/?from=3010&cs=beijing" target="_blank"  title="时代紫芳">
    					<img src="http://house-images-water.oss.aliyuncs.com/b66d2027c8a94c0ab6a5fc6839affd8c.t">
												    				</a>
    				<div>
    					<p class="p1"><a href="http://www.iwjw.com/chuzu/Z9mzhwEYPPQ/?from=3010&cs=beijing" target="_blank">3室2厅</a></p>
    					<p class="p2">110m²<i class="ll">|</i>高层</p>
    					<p class="p3"><i>9600</i> 元/月</p>
    				</div>
    			</li>
				    			<li>
    				<a class="imga hPic" href="http://www.iwjw.com/chuzu/885Y9U7LoMc/?from=3010&cs=beijing" target="_blank"  title="时代紫芳">
    					<img src="http://g3.ykimg.com/0100641F465502CE765FFB1D245C5DAC6F5D5D-8E19-155D-0398-881D3B8960AE">
												<i class="videoBtn" code="XOTExMjI3ODc2"><img src="http://resource.iwjw.com/2.2/cache/img/videoBtn.png"></i>    				</a>
    				<div>
    					<p class="p1"><a href="http://www.iwjw.com/chuzu/885Y9U7LoMc/?from=3010&cs=beijing" target="_blank">3室2厅</a></p>
    					<p class="p2">143m²<i class="ll">|</i>低层</p>
    					<p class="p3"><i>12000</i> 元/月</p>
    				</div>
    			</li>
									</ol>
	</div>
	</div>

<script src="${st}/js/house.js"></script>
<script src="${st}/js/HouseDetails.js"></script>

<!-- 尾部 -->
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

<script type="text/javascript" src="${st}/js/jsapi.js"></script>
</body>
</html>