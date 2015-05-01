<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<title>房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<meta name="baidu-site-verification" content="rO1Bqg66kn" />
<!--[if IE 9]><style>.Banner1 .STC{filter:Alpha(opacity=100);}</style><![endif]-->
<style>
#Top dl {
	width: 98%;
}
</style>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/index.css">

<script type="text/javascript">
$(document).ready(function(){
	$("button[type=submit]").on("click",function(){
		debugger;
		document.getElementById("mSearchForm").submit();
		//$("#mSearchForm").submit();
	});
	
})

</script>
</head>
<body>
<div class="home"></div>
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Banner1">
	<div class="Rw" id="Nav" cityId="2"> 
        <img src="${st}/images/shanghai1.png" class="Pa i1">
        <img src="${st}/images/shanghai2.png" class="Pa i2">
    	<div class="hot">
      		<ul class="ST">
        		<li ht="1" >租房</li>
        		<!-- |
        		<li ht="1"  class="act">二手房
          			<div class="Pa new"><b>NEW</b><i></i></div>
        		</li> -->
      		</ul>
     <%--  	<div class="STC" id="rentSrc">
        	<p class="Pa">全上海近 <b>3</b> 天新增 <b>7826</b> 套，出租 <b>946</b> 套</p>
        	<form method="get" action="${stx}/search" id="Search" class="searchForm" provinceId="2" provincePy="shanghai" provinceName="上海" ht="1">
          		<i class="one"></i>
          		<input type="text" name="addr" placeholder="请输入小区名称或地址" maxlength="50" autocomplete="off" style="width: 372px;height: 48px;">
          		<button type="submit" class="iconfont">&#xe633;</button>
        	</form>
        	<p class="Rec"> 
                <a href="#" >南京西路</a> 
                <a href="#" >漕河泾</a> 
                <a href="#" >古北</a> 
                <a href="#" >中山公园</a> 
                <a href="#" >武宁</a> 
                <a href="#" >金桥</a> 
                <a href="#" >陆家嘴</a> 
                <a href="#" >三林</a> 
                <a href="#" >张江</a> 
                <a href="#" >金虹桥</a> 
                <a href="#" >莘庄</a> 
            </p>
        	<a href="#" class="map">地图找房</a> 
        </div> --%>
      	<div class="STC act" id="sellSrc">
            <p class="Pa">上海有 <b>998</b> 套二手房正在出售</p>
            <form method="post" action="${stx}/search" id="mSearchForm" class="searchForm" provinceId="2" provincePy="shanghai" provinceName="上海" ht="2">
              <i class="one"></i>
              <input type="text" name="addr" placeholder="请输入小区名称或地址" maxlength="50" autocomplete="off">
              <button type="submit" class="iconfont">&#xe633;</button>
            </form>
            <p class="Rec"> 
            	<a href="#" >上海南站</a> 
                <a href="#" >田林</a> 
                <a href="#" >徐家汇</a> 
                <a href="#" >古北</a> 
                <a href="#" >曹杨</a> 
                <a href="#" >桃浦</a> 
                <a href="#" >金桥</a> 
                <a href="#" >塘桥</a> 
                <a href="#" >张江</a> 
                <a href="#" >春申</a> 
                <a href="#" >莘庄</a> 
            </p>
            <a href="#" class="map">地图找房</a> </div>
    	</div>
	</div>
</div>
<div class="Rw">
	<div class="video Dn">
        <div></div>
        <a><i class="iconfont">&#xe63b;</i> 如何找房</a>
    </div>
</div>
<div class="Box1">
	<div class="Play Rw" onselectstart="return false"> 
        <i class="left iconfont">&#xe620;</i> 
        <i class="right iconfont">&#xe628;</i>
        <div class="Oh Rw">
      		<div class="scroll"> 
            	<a href="#" target="_blank" class="house ht2" > 
            		<img src="${st}/images/0100641F4654BF78E217C51D245C5D39A009BA-8423-C8B7-3A85-CA10DE18A640.jpg" alt="高行银杏苑"> 
            		<i class="videoBtn" code="XODgxNDQ5Mjc2">
            			<img src="${st}/images/videoBtn.png">
            		</i>
                    <div class="over"> 
                        <i>单价:<span>2.4万/平</span></i>
                        <i>户型:<span>2室1厅</span></i>
                        <i>面积:<span>72m²</span></i>
                        <i>楼层:<span>低层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="高行银杏苑">高行银杏苑</b> 
                        <i class="price"><span>170</span> 万</i> 
                    </div>
        		</a> 
        		<a href="#" target="_blank" class="house ht2" > 
                	<img src="${st}/images/0100641F4654BFA29BE8E11D245C5D7DCAC755-44E2-B3D4-7D66-FDDC9475EE2B.jpg" alt="锦绣小区"> 					<i class="videoBtn" code="XODc2NjE5Nzk2">
                    	<img src="${st}/images/videoBtn.png">
                    </i>
        			<div class="over"> 
                        <i>单价:<span>3.9万/平</span></i>
                        <i>户型:<span>3室1厅</span></i>
                        <i>面积:<span>82m²</span></i>
                        <i>楼层:<span>低层</span></i> 
                    </div>
        			<div class="titles"> 
                        <b title="锦绣小区">锦绣小区</b> 
                        <i class="price"><span>320</span> 万</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g4.ykimg.com/0100641F465502574A58431D245C5D50D44C14-B860-1437-6D10-48FBEC5551CD" alt="东源名都"> 
                    <i class="videoBtn" code="XOTEwODgzNzk2">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>3室2厅</span></i>
                        <i>面积:<span>111m²</span></i>
                        <i>楼层:<span>中层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="东源名都">东源名都</b> 
                        <i class="price"><span>3200</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g1.ykimg.com/0100641F4655025EC7855C1D245C5D0C94A2BA-1A18-B342-27F4-79CD5A40F6DA" alt="海逸公寓"> 
                    <i class="videoBtn" code="XOTEwOTA2MDk2">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>1室1厅</span></i>
                        <i>面积:<span>55m²</span></i>
                        <i>楼层:<span>低层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="海逸公寓">海逸公寓</b> 
                        <i class="price"><span>6200</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g1.ykimg.com/0100641F465502ADDE7E881D245C5D005BDA55-E383-8B86-43F6-A088E65D695B" alt="牡丹公寓"> 
                    <i class="videoBtn" code="XOTExMTQzMDcy">
                        <img src="${st}/images/videoBtn.png">
                    </i>
        			<div class="over"> 
                        <i>户型:<span>2室1厅</span></i>
                        <i>面积:<span>77m²</span></i>
                        <i>楼层:<span>低层</span></i> 
                    </div>
        			<div class="titles"> 
                        <b title="牡丹公寓">牡丹公寓</b> 
                        <i class="price"><span>3800</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="" alt="瀚盛家园"> 
                    <i class="videoBtn" code="XOTExMTY4NjA0">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>2室2厅</span></i>
                        <i>面积:<span>87m²</span></i>
                        <i>楼层:<span>低层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="瀚盛家园">瀚盛家园</b> 
                        <i class="price"><span>3500</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g3.ykimg.com/0100641F4654FFFE52A28F1D245C5DDD44C0FE-CE13-A1E9-09CA-8F0724E73E87" alt="大众河滨">
                     <i class="videoBtn" code="XOTA5NzAxODYw">
                        <img src="${st}/images/videoBtn.png">
                     </i>
                    <div class="over"> 
                        <i>户型:<span>1室1厅</span></i>
                        <i>面积:<span>48m²</span></i>
                        <i>楼层:<span>中层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="大众河滨">大众河滨</b> 
                        <i class="price"><span>4800</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g4.ykimg.com/0100641F465502AEEEB4661D245C5D18280C86-BA86-0E5D-D9A8-2073E82F78B9" alt="莲康苑"> 
                    <i class="videoBtn" code="XOTExMTUxNjMy">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>1室1厅</span></i>
                        <i>面积:<span>66m²</span></i>
                        <i>楼层:<span>中层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="莲康苑">莲康苑</b> 
                        <i class="price"><span>3500</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g3.ykimg.com/0100641F46550125D4BDB71D245C5D13D9C176-A18A-FB12-A7C6-D53063514C4A" alt="鹏裕苑"> 
                    <i class="videoBtn" code="XOTEwMjc1NjUy">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>2室2厅</span></i>
                        <i>面积:<span>90m²</span></i>
                        <i>楼层:<span>高层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="鹏裕苑">鹏裕苑</b> 
                        <i class="price"><span>3700</span> 元/月</i> 
                    </div>
                </a> 
                <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g4.ykimg.com/0100641F465501266C76B11D245C5D5988D96C-E042-5D8C-26ED-306CCEDE0813" alt="密云花苑"> 
                    <i class="videoBtn" code="XOTEwMjczMDY4">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>2室1厅</span></i>
                        <i>面积:<span>100m²</span></i>
                        <i>楼层:<span>高层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="密云花苑">密云花苑</b> 
                        <i class="price"><span>5000</span> 元/月</i> 
                    </div>
                </a> 
        		<a href="#" target="_blank" class="house ht1" style="display:none;"> 
                    <img src="http://g4.ykimg.com/0100641F4655026053BD901D245C5D590B5733-7F56-01B8-C572-FF48E0C3B07F" alt="东源名都"> 
                    <i class="videoBtn" code="XOTEwOTA3ODk2">
                        <img src="${st}/images/videoBtn.png">
                    </i>
                    <div class="over"> 
                        <i>户型:<span>1室1厅</span></i>
                        <i>面积:<span>56m²</span></i>
                        <i>楼层:<span>中层</span></i> 
                    </div>
                    <div class="titles"> 
                        <b title="东源名都">东源名都</b> 
                        <i class="price"><span>3300</span> 元/月</i> 
                    </div>
        		</a> 
        		<a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://g1.ykimg.com/0100641F46550002F0F1CB1D245C5DB9DB5867-BF85-30F4-C018-B6C4D32FF101" alt="生安花苑"> 
                <i class="videoBtn" code="XOTA5NzE4MzE2">
                	<img src="${st}/images/videoBtn.png">
                </i>
        		<div class="over"> 
                    <i>户型:<span>3室2厅</span></i>
                    <i>面积:<span>125m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="生安花苑">生安花苑</b> 
                    <i class="price"><span>8000</span> 元/月</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://g3.ykimg.com/0100641F4655015F9E7CB51D245C5DDAE0B765-CB6E-E556-0CE3-D346715D47D0" alt="开鲁五村"> 
                <i class="videoBtn" code="XOTEwNDEwNjMy">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>户型:<span>2室2厅</span></i>
                    <i>面积:<span>83m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="开鲁五村">开鲁五村</b> 
                    <i class="price"><span>3600</span> 元/月</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://g3.ykimg.com/0100641F465502BD72C8BD1D245C5D6E854602-10B0-94C0-3E63-3415738A4845" alt="申城佳苑"> 
                <i class="videoBtn" code="XOTExMTkwMjk2">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>户型:<span>4室2厅</span></i>
                    <i>面积:<span>135m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="申城佳苑">申城佳苑</b> 
                    <i class="price"><span>5300</span> 元/月</i> 
                </div>
            </a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://g2.ykimg.com/0100641F465502F6DBE0F61D245C5DB7DD81B9-A2ED-F11D-D3D2-2E01F94FD0B6" alt="金桥新家园"> 
                <i class="videoBtn" code="XOTExMjkzNDIw">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>71m²</span></i>
                    <i>楼层:<span>高层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="金桥新家园">金桥新家园</b> 
                    <i class="price"><span>4000</span> 元/月</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://g1.ykimg.com/0100641F4654FEA63EEA191D245C5D508C7238-F44B-DD8D-CC1F-062CA9B5CADF" alt="杉林新月家园"> 
                <i class="videoBtn" code="XOTA4OTY2ODI4">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>72m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="杉林新月家园">杉林新月家园</b> 
                    <i class="price"><span>3300</span> 元/月</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g1.ykimg.com/0100641F465502E9C533081D245C5DEA6E1A5A-6C90-D809-C43A-C0218DAEBED9" alt="电影华苑"> 
                <i class="videoBtn" code="XOTExMjQ2NDQw">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>5.9万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>65m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="电影华苑">电影华苑</b> 
                    <i class="price"><span>385</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="${st}/images/0100641F465502E9C533081D245C5DEA6E1A5A-6C90-D809-C43A-C0218DAEBED9.jpg" alt="三和花园">
                <div class="over"> 
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>30m²</span></i>
                    <i>楼层:<span>高层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="三和花园">三和花园</b> 
                    <i class="price"><span>3100</span> 元/月</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="${st}/images/0100641F4654BF78E217C51D245C5D39A009BA-8423-C8B7-3A85-CA10DE18A640.jpg" alt="正旺苑">
                 <i class="videoBtn" code="XODc2NTMxOTY0">
                    <img src="${st}/images/videoBtn.png">
                 </i>
                <div class="over"> 
                    <i>单价:<span>2.9万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>57m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="正旺苑">正旺苑</b> 
                    <i class="price"><span>165</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g2.ykimg.com/0100641F4654C10BC5FB951D245C5D91071A1F-4981-8334-0AA7-207BE5FB4B1E" alt="正旺苑"> 
                <i class="videoBtn" code="XODc3NTE0MTMy">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>2.8万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>57m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="正旺苑">正旺苑</b> <i class="price"><span>162</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g4.ykimg.com/0100641F465502EE9CDD771D245C5DA363D09F-C9E7-9E50-8914-38B06836B265" alt="高兴花园二三四街坊"> 
                <i class="videoBtn" code="XOTExMjk3MTQ0">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>2.7万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>47m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="高兴花园二三四街坊">高兴花园二三四街坊</b> 
                    <i class="price"><span>125</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g2.ykimg.com/0100641F4654DD94B0176D1D245C5DE83D39BA-6226-598E-818F-EFDEF3901396" alt="吉宝·汇锦城"> 
                <i class="videoBtn" code="XODkyNDk5NDA0">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>1.4万/平</span></i>
                    <i>户型:<span>4室2厅</span></i>
                    <i>面积:<span>140m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="吉宝·汇锦城">吉宝·汇锦城</b> 
                    <i class="price"><span>200</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g3.ykimg.com/0100641F4654BE30F967C71D245C5D74A65B8C-EA9F-17B5-4C64-82DCEC47A0E9" alt="水塘小区"> 
                <i class="videoBtn" code="XODc1ODczMjgw">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>3.2万/平</span></i>
                    <i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>65m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="水塘小区">水塘小区</b> 
                    <i class="price"><span>210</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g3.ykimg.com/0100641F4654C97ED026701D245C5DBD867701-037C-B305-10ED-478B739100EA" alt="岚皋大楼"> 
                <i class="videoBtn" code="XODgxODI0NjA0">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>4.6万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>50m²</span></i>
                    <i>楼层:<span>中层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="岚皋大楼">岚皋大楼</b> 
                    <i class="price"><span>230</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
            	<img src="http://g2.ykimg.com/0100641F4654C7C2130EF51D245C5D51EBC1EE-B506-8708-90BF-5B37FE55F2EE" alt="东方花园"> 
                <i class="videoBtn" code="XODgwODQ0Mzg0">
                	<img src="${st}/images/videoBtn.png">
                </i>
            	<div class="over"> 
                    <i>单价:<span>4.2万/平</span></i>
                    <i>户型:<span>3室2厅</span></i>
                    <i>面积:<span>99m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
            	<div class="titles"> 
                    <b title="东方花园">东方花园</b> 
                    <i class="price"><span>415</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g1.ykimg.com/0100641F4654C8F06826AD1D245C5DC7A189B3-DD73-3EE1-0462-5811B865AFE8" alt="汇成苑二村"> 
                <i class="videoBtn" code="XODgxNTE1NjI0">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>3.1万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>33m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="汇成苑二村">汇成苑二村</b> 
                    <i class="price"><span>105</span> 万</i> 
                </div>
            </a> 
            <a href="#" target="_blank" class="house ht2" > 
                <img src="http://g1.ykimg.com/0100641F4654D647D2C6AF1D245C5D340034F1-DDC5-A1A0-8775-9280DFCF3910" alt="永业公寓"> 
                <i class="videoBtn" code="XODg4NDc1NDAw">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>7.6万/平</span></i>
                    <i>户型:<span>2室2厅</span></i>
                    <i>面积:<span>110m²</span></i>
                    <i>楼层:<span>高层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="永业公寓">永业公寓</b> 
                    <i class="price"><span>840</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
                <img src="http://g3.ykimg.com/0100641F4654D9C418A1C81D245C5D605191E7-80C4-1729-61A7-C8E3490F299A" alt="益民小区"> 
                <i class="videoBtn" code="XODkwNTUzNjcy">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                    <i>单价:<span>2.7万/平</span></i>
                    <i>户型:<span>3室2厅</span></i>
                    <i>面积:<span>124m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="益民小区">益民小区</b> 
                    <i class="price"><span>330</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
                <img src="http://g1.ykimg.com/0100641F4654BB51A7A2461D245C5DA7F88DDE-E28A-6D38-76A2-2EE11B009F6F" alt="控江五村小区"> 
                <i class="videoBtn" code="XODc0MzI1Mjcy">
                    <img src="${st}/images/videoBtn.png">
                </i>
                <div class="over"> 
                	<i>单价:<span>2.6万/平</span></i>
                    <i>户型:<span>2室0厅</span></i>
                    <i>面积:<span>51m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
                <div class="titles"> 
                	<b title="控江五村小区">控江五村小区</b> 
                    <i class="price"><span>135</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
            <img src="http://g2.ykimg.com/0100641F4654D9C2E5A1CB1D245C5D617B7E4F-017E-133F-A8F4-491B1C93A1DF" alt="益民小区"> 
            <i class="videoBtn" code="XODkwNTQyNTE2">
            	<img src="${st}/images/videoBtn.png">
            </i>
        	<div class="over"> 
            	<i>单价:<span>3.3万/平</span></i>
                <i>户型:<span>2室1厅</span></i>
                <i>面积:<span>71m²</span></i>
                <i>楼层:<span>低层</span></i> 
            </div>
        	<div class="titles"> 
            	<b title="益民小区">益民小区</b> 
                <i class="price"><span>235</span> 万</i> 
            </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
                <img src="http://g4.ykimg.com/0100641F46550278463D0D1D245C5DEA436475-3FDC-C08F-ED37-D9F52083B952" alt="梅六小区"> 
                <i class="videoBtn" code="XOTEwOTczMzgw">
                	<img src="${st}/images/videoBtn.png">
                </i>
            	<div class="over"> 
                	<i>单价:<span>3.5万/平</span></i>
                    <i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>57m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
            	<div class="titles"> 
                	<b title="梅六小区">梅六小区</b> 
                    <i class="price"><span>200</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
            	<img src="http://g4.ykimg.com/0100641F4654BE7A3C23021D245C5D13C7DD78-2ED3-E983-CA64-D386490F599E" alt="佳虹小区"> 
                <i class="videoBtn" code="XODc2MDE1MzUy">
                	<img src="${st}/images/videoBtn.png">
                </i>
        		<div class="over"> 
                    <i>单价:<span>2.4万/平</span></i>
                    <i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>65m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="佳虹小区">佳虹小区</b> 
                    <i class="price"><span>160</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
            	<img src="http://g4.ykimg.com/0100641F4654B9D441413E1D245C5D0135C769-BC97-9148-64B1-D3475A90B409" alt="新泾一村"> 
                <i class="videoBtn" code="XODczNTgzNjky">
                	<img src="${st}/images/videoBtn.png">
                </i>
        		<div class="over"> 
                	<i>单价:<span>3.3万/平</span></i>
                    <i>户型:<span>1室1厅</span></i>
                    <i>面积:<span>39m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="新泾一村">新泾一村</b> 
                    <i class="price"><span>130</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
            	<img src="http://g1.ykimg.com/0100641F4654DDCE294EE61D245C5D7E6F61F8-E177-BF85-75D4-C97FF1BFBB75" alt="日晖六村"> 
                <i class="videoBtn" code="XODkyNjg2NDMy">
                	<img src="${st}/images/videoBtn.png">
                </i>
        		<div class="over"> 
                	<i>单价:<span>3.3万/平</span></i>
                    <i>户型:<span>1室0厅</span></i>
                    <i>面积:<span>28m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="日晖六村">日晖六村</b> 
                    <i class="price"><span>95</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
            	<img src="http://house-images-water.oss.aliyuncs.com/eae428bbd7094608a296c5c8928c9eec.t" alt="运光大楼">
        		<div class="over"> 
                	<i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>77m²</span></i>
                    <i>楼层:<span>高层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="运光大楼">运光大楼</b> 
                    <i class="price"><span>4300</span> 元/月</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht2" > 
            	<img src="http://g3.ykimg.com/0100641F4654B7BED026631D245C5D5B1E736B-12BE-B800-728B-69819AE151F6" alt="凌兆新村"> 
                <i class="videoBtn" code="XODcyNjExOTc2">
                	<img src="${st}/images/videoBtn.png">
                </i>
        		<div class="over"> 
                    <i>单价:<span>2.8万/平</span></i>
                    <i>户型:<span>2室1厅</span></i>
                    <i>面积:<span>74m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                    <b title="凌兆新村">凌兆新村</b> 
                    <i class="price"><span>205</span> 万</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
                <img src="http://house-images-water.oss.aliyuncs.com/a06b892e21a242f4853860f0db6c1709.t" alt="天宝华庭">
                <div class="over"> 
                    <i>户型:<span>1室0厅</span></i>
                    <i>面积:<span>42m²</span></i>
                    <i>楼层:<span>中层</span></i> 
                </div>
                <div class="titles"> 
                    <b title="天宝华庭">天宝华庭</b> 
                    <i class="price"><span>4200</span> 元/月</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
            	<img src="http://house-images-water.oss.aliyuncs.com/716735aa57e34b62887a120849a1570c.t" alt="中环一号三期">
        		<div class="over"> 
                	<i>户型:<span>3室2厅</span></i>
                    <i>面积:<span>98m²</span></i>
                    <i>楼层:<span>高层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="中环一号三期">中环一号三期</b> 
                    <i class="price"><span>5500</span> 元/月</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
            	<img src="http://house-images-water.oss.aliyuncs.com/75a490ce22734656924e31c5af72b6dc.t" alt="富丽苑">
        		<div class="over"> 
                	<i>户型:<span>3室2厅</span></i>
                    <i>面积:<span>127m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="富丽苑">富丽苑</b> 
                    <i class="price"><span>3500</span> 元/月</i> 
                </div>
        	</a> 
        	<a href="#" target="_blank" class="house ht1" style="display:none;"> 
            	<img src="http://house-images-water.oss.aliyuncs.com/9094f833afa14911b73d0686665ffdbd.t" alt="欧泊花郡">
        		<div class="over"> 
                	<i>户型:<span>2室2厅</span></i>
                    <i>面积:<span>98m²</span></i>
                    <i>楼层:<span>低层</span></i> 
                </div>
        		<div class="titles"> 
                	<b title="欧泊花郡">欧泊花郡</b> 
                    <i class="price"><span>5000</span> 元/月</i> 
                </div>
        	</a> 
          </div>
		</div>
	</div>
</div>
<div class="Box1 Server">
	<h3>为你提供<i>最好的中介服务</i></h3>
  	<p>房界以互联网思维和全新服务体系，自建上海及北京经纪人团队，以全新服务为您找到自己的家！</p>
  	<ul class="Rw server">
    	<li> 
        	<img src="${st}/images/server1.png" alt="租房服务"> 
            <i><b>100%真房源</b></i>
            <i>全部人工验证</i> 
        </li>
    	<li> 
            <img src="${st}/images/server2.png" alt=""> 
            <i><b>手机约看</b></i>
            <i>一站到底</i> 
        </li>
    	<li> 
            <img src="${st}/images/server3.png" alt=""> 
            <i><b>一对一</b></i>
            <i>专业服务</i> 
        </li>
	</ul>
</div>
<div class="Soot">
	<div class="Tc Rw">
    	<h3>把房子委托给房界</h3>
    	<p>我们快速帮您找到合适的客户，您可以通过以下两种方式进行委托</p>
    	<div class="Pa"> 
        	<a href="#"><span>在线委托</span></a> 或拨打 <i><img src="${st}/images/tel.png" alt="400-700-6622"></i> 
        </div>
	</div>
</div>
<div class="Say">
	<div class="Rw">
    	<p>他们说</p>
    	<div class="word">
      		<div class="scroll Pr">
        		<div>
                    <p class="Sc"><b></b><span>1 月，在上海市整租房市场中，<i>房界以 28.95% 的份额位居第一</i>，传统中介公司我爱我家以9.9%居第二位，中原地产和德佑地产分别为第三和第四位</span>
                    </p>
                    <p class="Sf">来自 <b>《中国互联网房屋租赁中介市场专题研究报告2014(上海篇)》</b></p>
        		</div>
        		<div>
                    <p class="Sc"><b></b><span>“房界”希望通过<i>“提升效率”</i>来改变传统的房屋租赁模式</span></p>
                    <p class="Sf">来自 <b>《第一财经周刊》</b></p>
        		</div>
        		<div>
          			<p class="Sc"><b></b><span>12月在北京广播、地铁<i>大打佣金半价的“互联网房屋中介公司”</i>——房界，正以“野蛮人”的角色迅猛抢经纪人、抢租客、抢房东！</span></p>
          			<p class="Sf">来自 <b>《21世纪经济报道》</b></p>
        		</div>
        		<div>
          			<p class="Sc"><b></b><span>在北京租赁市场，公开喊出“佣金5折”的，房界还是第一家。<i>这个“高折扣”和“无门店” 模式一推出</i>，立刻引起了行业内的强烈关注</span></p>
          			<p class="Sf">来自 <b>《北京晚报》</b></p>
        		</div>
        		<div>
          			<p class="Sc"><b></b><span>房界一不设门店；二不给中介顾问佣金提成以<i>避免经纪人对客户“挑肥拣瘦”</i>，通过高底薪、快成交、以客户打分为基准的服务费激励租房顾问提供服务，对租客一视同仁</span></p>
          			<p class="Sf">来自 <b>《钛媒体/商业价值》</b></p>
        		</div>
			</div>
		</div>
	</div>
</div>
<div class="App">
	<div class="Rw">
    	<div class="guide Pa"><img src="${st}/images/guide.png"></div>
    	<p>最给力的找房神器</p>
    	<b>各种<i>优惠</i>停不住</b>
    	<div class="down"> 
            <a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'software', 'download', 'i_iphone'])"><i class="iconfont">&#xe621;</i>iPhone  版下载</a> 
            <a href="#" target="_blank" onclick="_hmt.push(['_trackEvent', 'software', 'download', 'm_android']);"><i class="iconfont android">&#xe611;</i>Android  版下载</a> 
        </div>
	</div>
</div>

<div class="Foot">
	<div class="Rw">
    	<p class="code"><i></i></p>
    	<p class="bd"><a href="chuzu/page/about">关于我们</a> | <a href="/chuzu/proprietor/service">房东服务</a> | <a href="chuzu/page/protocol">网站使用协议</a> | <a href="chuzu/page/agentProtocol">中介服务协议</a> | <a href="#">网站地图</a></p>
	</div>
	<div class="Rw">
    	<p class="US"><i class="tel">热线：<b>400-700-6622</b>(早9:00 ~ 晚9:00)</i> <i class="mail">邮箱：<b>cs@iwjw.com</b></i> <i> <a href="#" target="_blank" class="iconfont qq">&#xe638;</a> <i class="wx iconfont">&#xe63a;<b></b></i> <a href="#" target="_blank" class="iconfont">&#xe639;</a> </i> </p>
	</div>
  &copy;2014-2015  满懿（上海）房地产咨询有限公司.&nbsp;&nbsp;All right reserved. <a href="#" rel="nofollow" target="_blank">沪ICP备14020180</a> 
</div>


<div style="display:none"> 
  <!--<script src="http://resource.iwjw.com/2.2/js/foot.js"></script>--> 
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
<script src="${st}/js/index.js"></script> 
<script type="text/javascript">
</script>
</body>
</html>