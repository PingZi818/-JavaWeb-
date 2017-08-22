<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.fashion.entity.Brand"%>
<%@page import="com.fashion.dao.BrandDao"%>
<%@page import="com.fashion.entity.Good"%><%@page%>
<%@page import="com.fashion.dao.GoodDao"%>
<%@page import="com.fashion.util.DataBaseUtil"%>
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
<title>Fashion</title>
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
	<%
		
	%>
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
				
					 <form name="form" method="POST" action="Search.jsp">
						<input type="text" name="brand" value="" class="searchin"  /> 
							
							<input type="submit" value="搜索 "
							class="searchbtss" /> 				
							<img src="images/right.png" alt="" />
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
		<div class="flipster" txt-align="center">
			<ul>
				<li><a href="fashion.jsp" class="Button Block1">
						<h1>首页</h1>
						<p>请关注我们的最新动态哟！天天都有惊喜等着你！</p>
				</a></li>
				<li><a href="" class="Button Block2">
						<h1>foot</h1>
						<p>页脚有我们的联系方式哟！</p>
				</a></li>
				<li><a href="international.jsp" class="Button Block3">
						<h1>国际品牌</h1>
						<p>我们聚集各国尚品等你来哟！</p>
				</a></li>
				<li><a href="hufu.jsp" class="Button Block4">
						<h1>护肤系列</h1>
						<p>
							好好护肤每个人也可以是女神！
							<code>enableNav</code>
							option
						</p>
				</a></li>
				<li><a href="beauty.jsp" class="Button Block5">
						<h1>美妆</h1>
						<p>
							漂亮从fashion开始
							<code>enableNav</code>
							option
						</p>
				</a></li>
			</ul>
		</div>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/jquery.flipster.js"></script>
		<script>
			$(function() {
				$(".flipster").flipster({
					style : 'carousel',
					start : 0
				});
			});
		</script>

	</div>
	</div>
	<!--轮播结束-->
	<!--body-->
	<div class="bigbody">
		<div class="newHome-content">
			<div class="content">


				<!--超级特卖[[-->

				<div class="content_sale">
					<h2 class="tit" id="superSale" name="superSale">
						超级特卖<span>Super sale</span>
					</h2>
					<div class="saleNotice">
						<i></i>
						<div class="noticeList">
							<a href="/article/index/detail?id=11" target="_blank">SKIN79变更公司名及LOGO公告</a>
						</div>
					</div>



					<ul>
						<%
							//显示商品信息
							GoodDao goodDAO = new GoodDao();

							List<Good> goods = new ArrayList<Good>();
							goods = goodDAO.findAll();

							for (int i = 0; i <= goods.size(); i++) {
								Good good = goods.get(i);
								if (i == 6) {
									break;
								}
						%>
						<a href="goodsshow.jsp?id=<%=good.getGid()%>" class="sale_imgs">
							<li>
								<div class="sale_img">

									<img src="images/<%=good.getGphoto()%>" width="200"
										height="250">
									<div class="time">
										<div class="time_bg"></div>
										<p active-data-val="1471485600" node="countDown">
											<i></i>仅剩：<b>04</b>天<b>20</b>时<b>14</b>分<b>54</b>秒
										</p>
									</div>

									<div class="sale_green">真心便宜</div>
								</div>
								<h4>
									<a href="goodsshow.jsp?id=<%=good.getGid()%>" target="_blank"><%=good.getGood()%></a>
								</h4>
								<div class="sale_price">
									<span class="priced"><dfn>&yen;</dfn><%=good.getPrice()%></span>
									<del class="price">
										<dfn>&yen;</dfn>
										16.00
									</del>
									<span class="sale_num"><strong>2044</strong>人已购买</span> <a
										href="addshopcar.jsp?id=<%=good.getGid()%>" class="sale_buys">立即抢购</a>

								</div> <span class="brand"><strong>brand:<%=good.getBrand()%></strong></span><br />
								<span class="skill"><strong>skill:<%=good.getSkill()%></strong></span>
						</li>
						</a>
						<%
							}
						%>
					</ul>
				</div>

				<!--超级特卖]]-->
				<div class="content_r">
					<!--活动专题[[-->
					<h2 class="tit">
						精选活动<span>Selected activities</span>
					</h2>
					<div class="content_topics">
						<div class="topics_img">
							<p>
								<a href="" target="_blank"><img src="images/s1.png"><span
									class="hdzt_pict">全能积分 全?上线</span></a>
							</p>
						</div>
						<div class="topics_nav">
							<span class="cur"></span>
						</div>
					</div>
					<!--活动专题]]-->
					<!--品牌特卖[[-->
					<h2 class="tit">
						品牌特卖<span>Brand sale</span>
					</h2>
					<div class="content_brand">
						<ul>
							<li><a href="" target="_blank" class="brand_img"><img
									src="images/p1.png"></a> <a href="" target="_blank"
								class="brand_detail"><h3>Za</h3>
									<p>满99减</p></a></li>
							<li><a href="" target="_blank" class="brand_img"><img
									src="images/skin79.png"></a> <a href="" target="_blank"
								class="brand_detail"><h3>泊美</h3>
									<p>满99减</p></a></li>
							<li><a href="" target="_blank" class="brand_img"><img
									src="images/zr.png"></a> <a href="" target="_blank"
								class="brand_detail"><h3>T透</h3>
									<p>满78减</p></a></li>
						</ul>
					</div>
					<!--品牌特卖]]-->
				</div>
			</div>
			<!--新品推荐结束-->


			<!--品牌专区开始-->
			<div class="content_recm">
				<h2 class="tit">
					品牌推荐<span>Brand recommend</span>
					<!--<a href="#" class="more">MORE></a>-->
				</h2>
				<div class="brand_lis">
					<form action="brandshow.jsp?id=10" method="post">

						<%
						BrandDao brandDAO = new BrandDao();
						List<Brand> brands = new ArrayList<Brand>();
						brands = brandDAO.findAll();

						for (Brand brand : brands) {
					%>
						<a href="brandshow.jsp?id=<%=brand.getBid()%>"> <img
							src="images/<%=brand.getBphoto()%>" width="100px" height="50px"><br /></a>
						<span></span>
						<%
						}
					%>
					</form>
				</div>
			</div>
			<!--品牌专区结束-->



		</div>
	</div>
	<!--body-->
	<!--foot-->
	<div class="bigfoot">
		<!--<span id="foot" > </span>-->
		<iframe src="foot.html" width="100%" height="400" frameborder="0"
			scrolling="no"></iframe>
	</div>
	<!--foot-->
	</div>
</body>
</html>