<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>租房-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/HouseList.css">

</head>
<body>

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw">
	<div class="searchBar">
	<form action="http://www.iwjw.com/chuzu/beijing/" method="get" id="rentSearch" provinceId="12438" provincePy="beijing" provinceName="北京" ht="1" class="searchForm">
		<div id="listNav">
			<input type="hidden" name="grade" value="0">
			<input type="text" name="kw" maxlength="50" autocomplete="off" placeholder="请输入小区名称或地址" value="">
			<button type="submit" class="iconfont">&#xe633;</button>
			<div id="Line">
				<input type="hidden" name="subLineId" value="0">
				<h4><i class="iconfont">&#xe62d;</i>地铁</h4>
			</div>
			<div id="Area">
				<input type="hidden" name="areaId" value="0">
				<h4><i class="iconfont">&#xe605;</i>区域</h4>
			</div>
			<a href="javascript:" class="Sb"><i class="iconfont">&#xe62c;</i>地图找房</a>
		</div>
		<ul id="listFilter">
			<input type="hidden" name="grade" value="0">
			<input type="hidden" name="Price_Id" value="-1">
			<input type="hidden" name="roomNums" value="-1">
			<li id="pSel"><i class="Ib">租金：</i><a txt="-1" class="act">不限</a>
				<a txt="1">2000元以下</a><a txt="2">2000-4000元</a><a txt="3">4000-6000元</a>
				<a txt="4">6000-8000元</a><a txt="5">8000-10000元</a><a txt="6">10000-15000元</a>
				<a txt="7">15000元以上</a>
				<input type="text" maxlength="5" name="startPrice" txt="">
				 -
				<input type="text" maxlength="5" name="endPrice" txt=""> 元 <button type="submit">确定</button></li>
			<!-- <li id="rnSel"><i class="Ib">卧室：</i><a txt="-1" class="act">不限</a>
				<a txt="1">一室</a><a txt="2">二室</a><a txt="3">三室</a>
				<a txt="4">四室以上</a></li> -->
				<li id="rnSel"><i class="Ib">卧室：</i><a txt="-1" class="act">不限</a>
				<a txt="1">一室</a><a txt="2">二室</a><a txt="3">三室</a>
				<a txt="4">四室</a><a txt="5">四室以上</a></li>
			</ul>
	</form>
	</div>
</div>

<div class="Rw">
	<div class="List RL" searchName="">
		<dl id="Order">
			<dt>找到 999+ 套符合要求的北京租房</dt>
			<dd>
				<i o="0" class="act">默认</i>
				<i o="1">最新</i>
				<i o="3">价格<b class="iconfont">&#xe63f;</b></i>
			</dd>
		</dl>
		<ol>
			<li>
				<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://house-images-water.oss.aliyuncs.com/438294379e8f47e5aea28c41431c85fb.t" class="Ii">
					<i class="dj"><img src="${st}/images/sole.png"></i>			</a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/?from=1010&cs=beijing" target="_blank" title="大西洋新城 ">
								<i class="highLight">大西洋新城</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">68 m²</i> |
    					<i class="i3">中层</i> |
    					<i class="Hp"><b>5000</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 望京 广顺北大街33号院
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>15号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
									<li>
				<a href="http://www.iwjw.com/chuzu/s64nuvvCgSo/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://house-images-water.oss.aliyuncs.com/b36f520103e248ca9616fc5deb01eb43.t" class="Ii">
					<i class="dj"><img src="${st}/images/sole.png"></i>			</a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/s64nuvvCgSo/?from=1010&cs=beijing" target="_blank" title="上奥世纪中心 ">
								<i class="highLight">上奥世纪中心</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 0 厅</i> |
    					<i class="i2">51 m²</i> |
    					<i class="i3">中层</i> |
    					<i class="Hp"><b>3000</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 西三旗 上奥世纪中心
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">3天前发布</p>
				</div>
			</li>
									<li>
				<a href="http://www.iwjw.com/chuzu/ahP5Tb3H5Qc/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F4654FE78F4DBBC1D245C5DA5ADBB44-A00F-C6E4-4A08-02D9F3D6F88D" class="Ii">
					<i class="videoBtn" code="XOTA4ODM3MTIw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/ahP5Tb3H5Qc/?from=1010&cs=beijing" target="_blank" title="周庄嘉园 ">
								<i class="highLight">周庄嘉园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">90 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4000</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 华威桥 周庄嘉园A区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/nhg9LOfrVNk/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g1.ykimg.com/0100641F465503CBB518921D245C5D4567E98E-9BCC-F24C-8498-59515D73967D" class="Ii">
					<i class="videoBtn" code="XOTExNjg0NTA4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/nhg9LOfrVNk/?from=1010&cs=beijing" target="_blank" title="路劲·世界城 ">
								<i class="highLight">路劲·世界城</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 1 厅</i> |
    					<i class="i2">96 m²</i> |
    					<i class="i3">高层</i> |
    					<i class="Hp"><b>3100</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 昌平县城 路劲·世界城
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>昌平线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/Irycub5ZXzE/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F465503DAD5C0381D245C5D02FA3887-263D-756E-2AD0-9FF88D68C180" class="Ii">
					<i class="videoBtn" code="XOTExNzI2NjYw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/Irycub5ZXzE/?from=1010&cs=beijing" target="_blank" title="核桃园北里 ">
								<i class="highLight">核桃园北里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">58 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 东大桥 核桃园北里
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>6号线，10号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/VjgfmRZAhJQ/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g1.ykimg.com/0100641F465503D989D55F1D245C5D3A950DC1-B6FB-489A-078D-B52EF920A3E1" class="Ii">
					<i class="videoBtn" code="XOTExNzIzODgw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/VjgfmRZAhJQ/?from=1010&cs=beijing" target="_blank" title="名佳花园三区 ">
								<i class="highLight">名佳花园三区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">66 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>2600</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 北七家 名佳花园三区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/XM_E87JTzvM/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F465503BAABA8461D245C5D6CE84E26-05F6-E438-1E0E-8CA999BEAB74" class="Ii">
										<i class="videoBtn" code="XOTExNjM4OTQ4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/XM_E87JTzvM/?from=1010&cs=beijing" target="_blank" title="天通苑本六区 ">
								<i class="highLight">天通苑本六区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">90 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 天通苑 天通苑六区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/ns4h-PAovFQ/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F465503B27061B41D245C5D7D30FC03-2ABD-72D4-273B-854E30D89967" class="Ii">
										<i class="videoBtn" code="XOTExNjIyOTAw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/ns4h-PAovFQ/?from=1010&cs=beijing" target="_blank" title="时尚街区西区 ">
								<i class="highLight">时尚街区西区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 1 厅</i> |
    					<i class="i2">97 m²</i> |
    					<i class="i3">高层</i> |
    					<i class="Hp"><b>3900</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>通州 - 梨园 云景东路15号
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>八通线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/4h47DMNGhJE/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F465503A44AB2541D245C5DDF7D767D-37AC-1903-738B-3B59E1BF41AF" class="Ii">
					<i class="videoBtn" code="XOTExNTg0ODI4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/4h47DMNGhJE/?from=1010&cs=beijing" target="_blank" title="左家庄东里 ">
								<i class="highLight">左家庄东里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">43 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3800</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 国展 左家庄东里
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/HwqX0ZN_W7I/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g1.ykimg.com/0100641F465501572A22051D245C5DC215E77B-4E62-D99B-5602-86BE6A604545" class="Ii">
					<i class="videoBtn" code="XOTEwNDE5MjA0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/HwqX0ZN_W7I/?from=1010&cs=beijing" target="_blank" title="北京新天地 ">
								<i class="highLight">北京新天地</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">65 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 管庄 北京新天地一期
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>八通线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/2iYlA7j34bI/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F4655028C55CF761D245C5D1D3A7849-FDC4-E209-34CD-70FE0E927F15" class="Ii">
					<i class="videoBtn" code="XOTExMDIzNzAw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/2iYlA7j34bI/?from=1010&cs=beijing" target="_blank" title="永泰庄北路23号院 ">
								<i class="highLight">永泰庄北路23号院</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 1 厅</i> |
    					<i class="i2">60 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 清河 永泰庄北路23号院
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>8号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/4QOVkCWseZA/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F4655010088692A1D245C5D8F816766-433F-273C-0177-9BACED5737EE" class="Ii">
					<i class="videoBtn" code="XOTEwMTgxNDA0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/4QOVkCWseZA/?from=1010&cs=beijing" target="_blank" title="学院路甲9号院 ">
								<i class="highLight">学院路甲9号院</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">53 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3600</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 五道口 学院路甲9号院
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/rS3frgqtkdY/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F4655028B8CA3491D245C5D93C17151-E896-EF01-AD01-8285E43FB68D" class="Ii">
					<i class="videoBtn" code="XOTExMDIwOTMy"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/rS3frgqtkdY/?from=1010&cs=beijing" target="_blank" title="地质大学家属院 ">
								<i class="highLight">地质大学家属院</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">58 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 五道口 地质大学家属院
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>13号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/R7rogA4yyN8/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F465501219CB14F1D245C5D325AA82A-7011-D645-97EA-A650CEBE8B3F" class="Ii">
					<i class="videoBtn" code="XOTEwMjYxNjAw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/R7rogA4yyN8/?from=1010&cs=beijing" target="_blank" title="良庄家园 ">
								<i class="highLight">良庄家园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">80 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3800</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 回龙观 良庄家园
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>8号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/ruvpsVsVImQ/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F4654D5F18AE3C11D245C5D5148B91D-9F80-E668-BB94-9FEBEBC95F0E" class="Ii">
					<i class="videoBtn" code="XODg4NjAyMzY0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/ruvpsVsVImQ/?from=1010&cs=beijing" target="_blank" title="铁佛庵 ">
								<i class="highLight">铁佛庵</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">54 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>2500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 昌平县城 铁佛庵
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/if_JY6aBqQA/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g1.ykimg.com/0100641F4655027F63162C1D245C5D6BC881A4-3D13-6073-799F-BD313B45AE67" class="Ii">
					<i class="videoBtn" code="XOTEwOTg2Mjc2"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/if_JY6aBqQA/?from=1010&cs=beijing" target="_blank" title="新宫家园 ">
								<i class="highLight">新宫家园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">85 m²</i> |
    					<i class="i3">高层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>丰台 - 和义 新宫家园
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>4号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/mASjeS_Yoq8/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g1.ykimg.com/0100641F465502C9EA31EC1D245C5D6FE2E165-6B25-46BD-F7AD-EEF2A04D7CC7" class="Ii">
					<i class="videoBtn" code="XOTExMTk3NTEy"><img src="${st}/images/videoBtn.png"></i>
				</a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/mASjeS_Yoq8/?from=1010&cs=beijing" target="_blank" title="马连洼兰园 ">
								<i class="highLight">马连洼兰园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">65 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 马连洼 马连洼兰园
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/32VXd-WENyQ/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F465502A48448281D245C5DF8A6AB7F-67B7-3E33-EE12-F813F5D37772" class="Ii">
					<i class="videoBtn" code="XOTExMTE5NjQw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/32VXd-WENyQ/?from=1010&cs=beijing" target="_blank" title="安慧里四区 ">
								<i class="highLight">安慧里四区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">70 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>5700</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 亚运村 安慧里四区
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>5号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/Rw1lrkYlw4M/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F465502A2F45F071D245C5D780D14AF-FF6E-33B7-49FC-3746994388D1" class="Ii">
					<i class="videoBtn" code="XOTExMTE1MjI4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/Rw1lrkYlw4M/?from=1010&cs=beijing" target="_blank" title="安慧里四区 ">
								<i class="highLight">安慧里四区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">45 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 亚运村 安慧里四区
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>5号线 </p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/i1EKUgSCDws/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F4654FD3A1FBC821D245C5D8081B5E7-ED33-91B2-EC31-7FC8630F2A43" class="Ii">
					<i class="videoBtn" code="XOTA4MTYzNjAw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/i1EKUgSCDws/?from=1010&cs=beijing" target="_blank" title="百子湾家园 ">
								<i class="highLight">百子湾家园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 2 厅</i> |
    					<i class="i2">135 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>7000</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 百子湾 百子湾家园B区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">今日发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/epoqhhnVEmE/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F46550294EF10231D245C5DFC577238-AEBB-63B7-6E7D-2B5351B6CC21" class="Ii">
					<i class="videoBtn" code="XOTExMDQyMDgw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/epoqhhnVEmE/?from=1010&cs=beijing" target="_blank" title="百子湾家园 ">
								<i class="highLight">百子湾家园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 2 厅</i> |
    					<i class="i2">110 m²</i> |
    					<i class="i3">高层</i> |
    					<i class="Hp"><b>5600</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 百子湾 百子湾家园B区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/ALGZrl_G-4c/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F465503C7EEFE891D245C5D64DCDBCB-D435-36DD-B0AB-0BE31A71953A" class="Ii">
					<i class="videoBtn" code="XOTExNjcxMDIw"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/ALGZrl_G-4c/?from=1010&cs=beijing" target="_blank" title="太平里小区 ">
								<i class="highLight">太平里小区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">90 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>5300</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>西城 - 马连道 太平里小区
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>9号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/yiQDkczhFyQ/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F4654FEAAEECEAA1D245C5D706BDBA8-5052-670C-45EA-268F8FB92ED8" class="Ii">
					<i class="videoBtn" code="XOTA4OTU3MjI0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/yiQDkczhFyQ/?from=1010&cs=beijing" target="_blank" title="建安里小区 ">
								<i class="highLight">建安里小区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 1 厅</i> |
    					<i class="i2">90 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>2800</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 昌平县城 建安里
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/mkN1xNg_Uz8/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F46550263BDF93A1D245C5D02CAF161-4C7B-289F-4BBA-FDA35240803D" class="Ii">
					<i class="videoBtn" code="XOTEwOTEzODU2"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/mkN1xNg_Uz8/?from=1010&cs=beijing" target="_blank" title="双榆树南里 ">
								<i class="highLight">双榆树南里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">45 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>海淀 - 皂君庙 双榆树南里二区
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>4号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/haRO75G2WBM/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F4654C6E5BB85CC1D245C5D4135AC03-CD6D-04D4-57CC-6A6C57923D70" class="Ii">
					<i class="videoBtn" code="XODgwNDI0MTA4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/haRO75G2WBM/?from=1010&cs=beijing" target="_blank" title="兴政西里 ">
								<i class="highLight">兴政西里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">102 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>大兴 - 黄村 兴政西里
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>4号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/__20Ih9g_4c/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F465502C0E89ACB1D245C5D21439291-87FB-D85E-483E-1BBB96D0FF9E" class="Ii">
					<i class="videoBtn" code="XOTExMTk3MTg0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/__20Ih9g_4c/?from=1010&cs=beijing" target="_blank" title="温泉花园 ">
								<i class="highLight">温泉花园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">142 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>2500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 北七家 温泉花园B区
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/WGmpQgCf9Bo/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g3.ykimg.com/0100641F46550135E128E51D245C5D0510C8EE-C94A-374F-2C15-0B8C572DD2FF" class="Ii">
					<i class="videoBtn" code="XOTEwMzI0MzY4"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/WGmpQgCf9Bo/?from=1010&cs=beijing" target="_blank" title="北店嘉园 ">
								<i class="highLight">北店嘉园</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">3 室 1 厅</i> |
    					<i class="i2">117 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>4700</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 回龙观 北店嘉园
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>8号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/T5Nh1_W6CUE/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F4654FE8078B2151D245C5D8CBA5CDB-10C7-6634-322E-A3ED227FE600" class="Ii">
					<i class="videoBtn" code="XOTA4ODU1NTc2"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/T5Nh1_W6CUE/?from=1010&cs=beijing" target="_blank" title="晓月苑二里 ">
								<i class="highLight">晓月苑二里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">70 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>2500</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>丰台 - 看丹桥 晓月苑二里
					</p>
					<p class="Cb highLight"></p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/usOCDQuJb6Y/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g4.ykimg.com/0100641F4655030E4D90381D245C5DA0BB6E33-2C9D-5057-D292-6DD84371FB55" class="Ii">
					<i class="videoBtn" code="XOTExMzU4NTg0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/usOCDQuJb6Y/?from=1010&cs=beijing" target="_blank" title="嘉园二里 ">
								<i class="highLight">嘉园二里</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">1 室 1 厅</i> |
    					<i class="i2">56 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3200</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>丰台 - 草桥 嘉园二里
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>4号线，10号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
			<li>
				<a href="http://www.iwjw.com/chuzu/jUyhpSwCFjE/?from=1010&cs=beijing" class="house hPic" target="_blank">
					<img src="http://g2.ykimg.com/0100641F465502E312078A1D245C5D04D8A4CE-B23A-9275-FE9C-C53A8586E682" class="Ii">
					<i class="videoBtn" code="XOTExMjc4NDg0"><img src="${st}/images/videoBtn.png"></i>
                </a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="http://www.iwjw.com/chuzu/jUyhpSwCFjE/?from=1010&cs=beijing" target="_blank" title="中滩园小区 ">
								<i class="highLight">中滩园小区</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">2 室 1 厅</i> |
    					<i class="i2">90 m²</i> |
    					<i class="i3">低层</i> |
    					<i class="Hp"><b>3800</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>昌平 - 天通苑 中滩园
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>5号线，13号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
		</ol>
		<div class="Tr">
			<p class="Page">
				<i class="act">1</i>
    		    <a href="http://www.iwjw.com/chuzu/beijing/p2/">2</a>
    		    <a href="http://www.iwjw.com/chuzu/beijing/p3/">3</a>
    			<i class="out">...</i>
    			<a href="http://www.iwjw.com/chuzu/beijing/p100/">100</a>    		
    			<a href="http://www.iwjw.com/chuzu/beijing/p2/" class="next iconfont" title="下一页">&#xe63d;</a>
			</p>
		</div>
		<!-- 推荐房源 -->
		<p class="Cb"></p>
	</div> <!-- Rw end -->
</div>
<script src="${st}/js/rentSearch.js"></script>

<!-- 尾部 -->
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