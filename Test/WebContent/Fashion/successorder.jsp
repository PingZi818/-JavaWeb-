<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.fashion.entity.Good"%><%@page%>
<%@page import="com.fashion.dao.GoodDao"%>
<%@page import="com.fashion.util.DataBaseUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Successful</title>
</head>
<link href="<%@page%>css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<body>
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
				<li><form action="successorder.jsp?id=10"
							method="post">
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
				<img src="images/logo.png" alt="" />
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
				<li><form
							action="successorder.jsp?id=10"
							method="post">
							<a href="addshopcar.jsp?id=10">购物车</a>
						</form></li>
			</ul>
		</div>
	</div>
	<!--head-->
	<div class="bodyer">
		<%
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		
		GoodDao goodDao = new GoodDao();
		Good userintoGoods = goodDao.findnameByid(id);
		String good=userintoGoods.getGood();
		Double price=userintoGoods.getPrice();
		String number=request.getParameter("number");
		%>
		<table width=100% border="1" align="center">
			<caption
				style="font-size: 36px; font-style: normal; font-weight: bolder;">订单详情</caption>
			<tr>
				<td style="width: 300px">收货人:<%=request.getParameter("username1") %></td>
			</tr>
			<tr>
				<td style="width: 300px">收货地址:<%=request.getParameter("address")%></td>
			</tr>
			<tr>
				<td style="width: 300px">联系方式:<%=request.getParameter("tel")%></td>
			</tr>
			<tr>
				<td style="width: 300px">买家留言:<%=request.getParameter("text")%></td>
			</tr>
			<tr>
				<td style="width: 300px">商品名称:<%=good%></td>
			</tr>
			<tr>
				<td style="width: 300px">商品价格:<%=price%></td>
			</tr>
			<tr>
				<td style="width: 300px">商品数量:<%=1%></td>
			</tr>
		</table>
	</div>
	<!--foot-->
	<div class="bigfoot">
		<!--<span id="foot" > </span>-->
		<iframe src="foot.html" width="100%" height="400" frameborder="0"
			scrolling="no"></iframe>
	</div>
	<!--foot-->
</body>
</html>