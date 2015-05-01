<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>看房日程-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">

</head>
<body style="position: relative;">
	<!-- 头部 -->
	<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>

	<div class="Rw">
		<div class="SeeT"></div>
		<div class="Adviser Fr" ht="1">
			<img src=" http://resource.iwjw.com/2.2/img/server.png ">
			<dl>
				<dt>
					<i class="aname needCut" len="10" title="王建业">王建业</i> <span
						class="Star"> <i class="iconfont">&#xe616;</i> <i
						class="iconfont">&#xe616;</i> <i class="iconfont">&#xe616;</i> <i
						class="iconfont">&#xe616;</i> <i class="iconfont">&#xe616;</i>
					</span>
				</dt>
				<dd>
					<i class="iconfont">&#xe630;</i>13911806328
				</dd>
			</dl>
		</div>
<c:forEach items="${schedules }" var="s">
		
		<div class="SeeTab">
			<table>
				<tr>
					<td rowspan="2" class="left">
						<p class="Gray">已为您安排看房</p>
						<h3>星期三 2015年03月11日 14:20</h3>
						<dl>
							<dt>碰头地点</dt>
							<dd>===${s.meetaddr }</dd>
							<dt>备注</dt>
							<dd>===${s.remarks }</dd>
						</dl>
					</td>
					<td class="state" step="6" acode="YZR4yzAULQs" agentName="王建业"
						commentWord="服务很周到，以后回继续用。" attitude="5" appearance="5"
						ability="5" appraiseDate=""
						appointmentTime="星期三 2015年03月11日  14:20" meetAddress="芍药居北里"
						memo="不见不散" ht="1" agentId="4220" appraiseTime="1426054150000">
					</td>
				</tr>
				<tr>
					<td class="list">
						<p class="tit">本次带看房源${fn:length(s.items) }套</p>
						<table>
							<c:forEach items="${s.items }" var="si">
							<tr>
								<td class="img"><a
									href="${stx }/detail?id=${si.house.id}"
									target="_blank"> <img
										src="${si.house.mainImage}">
										<i class="Tc"></i>
								</a></td>
								<td class="link"><a
									href="${stx }/detail?id=${si.house.id}"
									target="_blank">
										<p>${si.house.name}</p>
								</a>
									<p class="Cb">
										<i class="iconfont">&#xe60b;</i>${si.house.name}
									</p></td>
								<td>${fns:dl(si.house.housetype,"house_type") }<i class="lls"></i></td>
								<td>${si.house.areanum}m²<i class="lls"></i></td>
								<td>${si.house.floor}<i class="lls"></i></td>
								<td>
									<p class="Tr">
										<b><i class="housePrice">${si.house.rentprice}</i> 元/月</b>
									</p>
								</td>
							</tr>
							 </c:forEach>
						</table>
					</td>
				</tr>
			</table>
		</div>
</c:forEach>
		<!--<dl class="LeaHouse">
			<dt class="Fl">预约中的房源<i></i>套</dt>
			<dd class="Fr Dn">清除失效房源</dd>
		</dl>-->
		<table class="HouseTab Appointment">
		
			<tr class="LeaHouse">
				<td colspan="6"><span class="Fl">预约中的房源<i></i>套
				</span>
					<button id="delNoRent" class="Fr Sb" disabled>清除失效房源</button></td>
			</tr>
			<c:forEach items="${sList}" var="s">
			<c:forEach items="${s.items }" var="si">
			<tr>
				<td class="imgtd tdF"><a
					href="${stx }/detail?id=${si.house.id}" target="_blank"
					class="hPic Fl"> <!-- 独家 -->
						<i class="dj"></i> <img
						src="${si.house.mainImage}">
				</a>
					<div class="Fl inf" style="margin-left: 15px;">
						<h4>
							<b> <a href="${stx }/detail?id=${si.house.id}"
								target="_blank" title="${si.house.name}"> <i>${si.house.name}</i> <!--<i>310号</i>-->
							</a>
							</b>
						</h4>
						<p class="Cb">
							<i class="iconfont">&#xe60b;</i>${si.house.smallArea.name}
						</p>
						<p class="Cb">
							<i class="iconfont">&#xe60c;</i>15号线
						</p>
						<p class="Cb Few">今日发布</p>
					</div></td>
				<td>${fns:dl(si.house.housetype,"house_type") }<i class="ll"></i></td>
				<td>${si.house.areanum}m²<i class="ll"></i></td>
				<td>${si.house.floor}<i class="ll"></i></td>
				<td>
					<p class="Tr">
						<b><i class="housePrice">${si.house.rentprice}</i> 元/月</b>
					</p>
				</td>

				<td class="tdL">待安排</td>
			</tr>
			</c:forEach>
          </c:forEach>
		</table>

		<div class="SeeT"></div>
	</div>
	<script src="${st}/js/appointment.js"></script>

	<!-- 尾部 -->
	<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
</body>
</html>