<%@ page contentType="text/html;charset=UTF-8"%><meta
	http-equiv="Content-Type" content="text/html;charset=utf-8" />
	
<div id="Top">
	<dl>
		<dt>
			<a class="logo" href="/">房界</a>
			<p class="city none">
				<a href="#" id="Province">厦门<i class="iconfont"></i></a> <b> <i></i>
					<a href="javascript:setProvince(12438)">福州</a> 
					<a href="javascript:setProvince(2)">厦门</a>
					<a href="javascript:setProvince(2)">泉州</a>
					<a href="javascript:setProvince(2)">漳州</a>
				</b>
			</p>
			<p>
				<a  id="setSearchCss"  mark="setCss" href="/chuzu/search">租房</a>
			</p>
			<p>
				<a  id="setAppDomwloadCss" mark="setCss" href="/chuzu/page/appDomwload">App下载</a>
			</p>
			<p>
				<a id="setProprietorCss" mark="setCss"  href="/chuzu/proprietor/service">房东委托</a>
			</p>
		</dt>
		<dd>
			<p class="menu">
				<a href="javascript:" class="login none">正在读取...</a>
			</p>
			<p>
				<a id="setSeeHouseCss" mark="setCss" href="/chuzu/seeHouse/list" ><i class="iconfont">&#xe627;</i>约看清单</a>
			</p>
			<p>
				<a id="setScheduleCss" mark="setCss"  href="/chuzu/schedule/list"><i class="iconfont">&#xe624;</i>看房日程</a>
			</p>
		</dd>
	</dl>
</div>
<script>
	Top()
</script>
<script>
<!--tab选中-->
 var href=window.location.href;
  $("a[mark=setCss]").each(function(){
		  $(this).removeClass("act");
  })
  
  if(href.indexOf("/chuzu/search")!=-1
	||href.indexOf("/chuzu/detail")!=-1	  
	||href.indexOf("/chuzu/map")!=-1	  
  ){
	  $("#setSearchCss").addClass("act");
  }
  
  if(href.indexOf("/chuzu/page/appDomwload")!=-1){
	  $("#setAppDomwloadCss").addClass("act");
  }
  
  if(href.indexOf("/chuzu/proprietor/service")!=-1||
		  href.indexOf("/chuzu/proprietor/delegation")!=-1  	  
  ){
	  $("#setProprietorCss").addClass("act");
  }
  
  if(href.indexOf("/chuzu/seeHouse/list")!=-1	  
  ){
	  $("#setSeeHouseCss").addClass("act");
  }
  
  if(href.indexOf("/chuzu/seeHouse/orderHouse")!=-1	  
	||href.indexOf("/chuzu/schedule/list")!=-1  
  ){
	  $("#setScheduleCss").addClass("act");
  }
  
 


</script>

