<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.fashion.entity.Brand"%><%@page%>
<%@page import="com.fashion.dao.BrandDao"%>
<%@page import="com.fashion.entity.Good"%><%@page%>
<%@page import="com.fashion.dao.GoodDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>International</title>
</head>
<link href="<%@page%>css/demo.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="<%@page%>css/jquery.flipster.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%@page%>css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="<%@page%>css/home.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="<%@page%>css/newcommon.css" rel="stylesheet" type="text/css"
	media="all" />
<body>
	<!--最大面板-->
	<div class="#">
		<!--head-->
		<div class="bighead">
			<div class="head">
				<ul>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li><a href="login.html">请登录</a></li>
					<li><a href="register.html">注册</a></li>
					<li>&nbsp;</li>
					<li><form action="successorder.jsp?id=10" method="post">
							<a href="successorder.jsp?id=10">我的美妆</a>
						</form></li>
					<li>|</li>
					<li>客户服务</li>
					<li>|</li>
					<li>更多</li>
				</ul>
			</div>
			<div class="head1">
				<div class="log">
					<a href="fashion.jsp"><img src="images/logo.png" alt="" /></a>
				</div>
				<div>
					<form action="http://www.xzhuang.com/goods/category/"
						name="formSearch" method="get" onsubmit="setSearchKeyWord();">
						<input type="text" name="key" id="" class="searchin" value=""
							autocomplete="off" /> <input type="submit" value="搜索 "
							class="searchbtss" /><img src="images/right.png" alt="" />
					</form>
				</div>
				<h2 class="tit" fontsize="14px">
					<b> <a href="" target="_blank">保湿</a>/ <a href=""
						target="_blank">清洁</a>/ <a href="" target="_blank">祛痘</a>/ <a
						href="" target="_blank">卸妆</a>/ <a href="" target="_blank">眼妆</a>/
						<a href="" target="_blank">隔离</a>/ <a href="" target="_blank">控油</a>
						<a href="" class="more">MORE</a>
					</b>

				</h2>
			</div>
			<div class="head2">
				<ul>
					<li>&nbsp;</li>
					<li><a href="fashion.jsp">首页</a></li>
					<li><a href="international.jsp">国际</a></li>
					<li><a href="hufu.jsp">护肤</a></li>
					<li><a href="beauty.jsp">美妆</a></li>
					<li><form action="successorder.jsp?id=10" method="post">
							<a href="addshopcar.jsp?id=10">购物车</a>
						</form></li>
				</ul>
			</div>
		</div>
		<!--head-->
		<!--banner条的轮播-->
	</div>
	<div class="banner1"></div>

	<!--轮播结束-->
	<!--body-->
	<div class="body2">
		<!--热销推荐]]-->

		<div class="body" align="center">
			<div class="content_hot">
				<h2 class="tit">
					<b> <a href="/goods/category/?key=%E4%BF%9D%E6%B9%BF"
						target="_blank">保湿</a>/ <a
						href="/goods/category/?key=%E6%B8%85%E6%B4%81" target="_blank">清洁</a>/
						<a href="/goods/category/?key=%E7%A5%9B%E7%97%98" target="_blank">祛痘</a>/
						<a href="/goods/category/?key=%E5%8D%B8%E5%A6%86" target="_blank">卸妆</a>/
						<a href="/goods/category/?key=%E7%9C%BC" target="_blank">眼妆</a>/ <a
						href="/goods/category/?key=%E9%9A%94%E7%A6%BB" target="_blank">隔离</a>/
						<a href="/goods/category/?key=%E6%8E%A7%E6%B2%B9" target="_blank">控油</a>
					</b> 热销推荐<span>Hot Recommendation</span> <a href="/goods/category/"
						class="more">MORE></a>
				</h2>

				<ul class="hot_li">
					<%
						//显示商品信息
						GoodDao goodDao = new GoodDao();
						List<Good> Goods = new ArrayList<Good>();
						Goods = goodDao.findAll();

						for (int i = 0; i <= Goods.size(); i++) {
							Good GooD = Goods.get(i);
							if (i == 15) {
								break;
							}
					%>

					<li>
						<div class="hot_img">
							<a href="goodsshow.jsp?id=<%=GooD.getGid()%>" target="_blank""><img
								src="images/<%=GooD.getGphoto()%>" width="200px" height="290px"></a>
							<div class="sale_yellows">爆款甩货</div>
							<h2>
								<a href="/?product-59005-1.html" target="_blank"><%=GooD.getGood()%></a>
							</h2>
							<p></p>
							<div class="sale_price">
								<span class="sale_num"><strong>98</strong>人已购买</span> <span
									class="priced"><dfn>&yen;</dfn><%=GooD.getPrice() + "元"%>
								</span>
								<del class="price">
									<dfn>&yen;</dfn><%=GooD.getPrice() + "元"%>
								</del>
								<span class="discount">6.4折</span>

							</div>
							<a href="addshopcar.jsp?id=<%=GooD.getGid()%>" class="sale_buys">立即抢购</a>
							<span class="brand"><strong>brand:<%=GooD.getBrand()%></strong></span><br />
							<span class="skill"><strong>skill:<%=GooD.getSkill()%></strong></span>
					</li>
					<%
						}
					%>

				</ul>
			</div>
		</div>
		<!--热销推荐]]-->


		<!--body-->
		<!--foot-->
		<div class="bigfoot">
			<!--<span id="foot" > </span>-->
			<iframe src="foot.html" width="100%" height="400" frameborder="0"
				scrolling="no"></iframe>
		</div>
		<!--foot-->
</body>
</html>