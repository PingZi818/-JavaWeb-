
<%@page import="com.fashion.entity.Good"%><%@page%>
<%@page import="com.fashion.dao.GoodDao"%>
<%@page import="com.fashion.util.DataBaseUtil"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>GoodShow</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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
				<li><form
							action="successorder.jsp?id=10"
							method="post">
							<a href="addshopcar.jsp?id=10">购物车</a>
						</form></li>
			</ul>
		</div>
	</div>
	<!--head-->

	<!--body-->
	<div class="goood-body">
	<div class="goood-body4"></div>
		<div class="goood-body1">
			<table width=100% border="0" align="left">
				<tr>
					<th style="width: 100px">商品详情-->></th>
				</tr>
			</table>

		</div>

		<%
			//显示商品信息	
			int id = Integer.parseInt(request.getParameter("id"));
			GoodDao goodDao = new GoodDao();
			Good userintoGoods = goodDao.findnameByid(id);
		%>
		<div class="goood-body2">
			<div class="goood-part1">
				<img src="images/<%=userintoGoods.getGphoto()%>" width="245px"
					height="290px">
			</div>

			<div class="goood-part2" align="center"
				id=<%=userintoGoods.getGid()%>>
				<form action="addshopcar.jsp?id=<%=userintoGoods.getGid()%>"
					method="post">
					<span>&nbsp;</span><br /> <span>&nbsp;</span><br /> <span>&nbsp;</span><br />
					<span>&nbsp;</span><br />
					<div class="1">
						<span>商品名称</span>s：<%=userintoGoods.getGood()%><br />
					</div>
					<span>&nbsp;</span><br />
					<div class="2">
						<span>商品价格：</span><%=userintoGoods.getPrice()%><br />
					</div>	
					<span>&nbsp;</span><br />				
					<div class="3">
						<span> 购买数量：</span><input type="text" name="number" />
					</div>
					<span>&nbsp;</span><br />
					<a href="addshopcar.jsp?id=<%=userintoGoods.getGid()%>"><input
						type="submit" value="加入购物车" /></a>

				</form>
			</div>
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
</body>
</html>
