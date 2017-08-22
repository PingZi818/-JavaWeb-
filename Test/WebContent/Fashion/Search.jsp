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
<title>Insert title here</title>
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
<!--超级特卖[[--><div class="nihao">
<caption
					style="font-size: 36px; font-style: normal; font-weight: bolder;">快来买啊！</caption><hr/>
				<div class="content_sale">
					<h2 class="tit" id="superSale" name="superSale">
						<span>Super sale</span>
					</h2>
					<div class="saleNotice">
						<i></i>
						<div class="noticeList">
							<a href="/article/index/detail?id=11" target="_blank">只有你想不到没有你买不到</a>
						</div>
					</div>



					<ul>
						<%	
							request.setCharacterEncoding("utf-8");
							//显示商品信息
							String brand= request.getParameter("brand");
							GoodDao goodDao = new GoodDao();
							List<Good> brands = new ArrayList<Good>();
						 brands = goodDao.findBybrand(brand);
						 
						  for(Good goodbrand:brands) {
							
			

						%>
						<a href="goodsshow.jsp?id=<%=goodbrand.getGid()%>" class="sale_imgs">
							<li>
								<div class="sale_img">

									<img src="images/<%=goodbrand.getGphoto()%>" width="200"
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
									<a href="goodsshow.jsp?id=<%=goodbrand.getGid()%>" target="_blank"><%=goodbrand.getGood()%></a>
								</h4>
								<div class="sale_price">
									<span class="priced"><dfn>&yen;</dfn><%=goodbrand.getPrice()%></span>
									<del class="price">
										<dfn>&yen;</dfn>
										16.00
									</del>
									<span class="sale_num"><strong>2044</strong>人已购买</span> <a
										href="addshopcar.jsp?id=<%=goodbrand.getGid()%>" class="sale_buys">立即抢购</a>

								</div> <span class="brand"><strong>brand:<%=goodbrand.getBrand()%></strong></span><br />
								<span class="skill"><strong>skill:<%=goodbrand.getSkill()%></strong></span>
						</li>
						</a>
						<%} %>
												
					</ul>
				</div>

				<!--超级特卖]]-->
				</div>
</body>
</html>