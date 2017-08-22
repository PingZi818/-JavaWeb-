
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
<title>Order</title>
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
				<li><form
							action="successorder.jsp?id=10"
							method="post">
							<a href="addshopcar.jsp?id=10">购物车</a>
						</form></li>
			</ul>
		</div>
	</div>
	<!--head-->
<%

		int id = Integer.parseInt(request.getParameter("id"));
		
		GoodDao goodDao = new GoodDao();
		Good userintoGoods = goodDao.findnameByid(id);
		
	   String good=userintoGoods.getGood();
		Double price=userintoGoods.getPrice();
		
		%>

	<!--body-->
	<form name="form" method="post"action="successorder.jsp?id=<%=userintoGoods.getGid()%>">
				<%String number=request.getParameter("number");%>
	<div class="bodys">
	<div class="null1"><hr/></div>
	
		<div class="body1">
			
			<table id="table" width=100% border="1"align="center">
					<tr>
						<td style="width: 100px"align="center"><span>商品名称</span></td>
						<td style="width: 100px" background="#FAFAFA" align="center"><span>商品价格</span></td>
						<td style="width: 100px" background="#FAFAFA" align="center"><span>商品数量</span></td>
					</tr>
					<tr>
						<td style="width: 100px" align="center"><%=good%></td>
						<td style="width: 100px" align="center"><%=price%></td>
						<td style="width: 100px" align="center"><%=request.getParameter("number")%></td>
					</tr>
				</table>
		</div>
		
		<div class="body4">
			<table width=100% border="0" align="center">
				<caption
					style="font-size: 36px; font-style: normal; font-weight: bolder;">用户信息</caption>

				<tr align="center">
					<td width="300" height="40"align="right">真实姓名:</td>
					<td width="400" height="40"align="left"><input name="username1"
						type="text" class="textbox" id="usernamse1" size="24"
						maxlength="8"></td>
				</tr>
				<tr align="center">
					<td width="300px" height="40px"align="right">收货住址:</td>
					<td width="400px" height="40px"align="left"><input name="address" type="text"
						class="textbox" id="address" size="24" maxlength="20"></td>
				</tr>
				<tr align="center">
					<td width="300" height="40"align="right">联系方式:</td>
					<td width="400" height="40"align="left"><input name="tel" type="text"
						class="textbox" id="tel" size="24" maxlength="11"></td>
				</tr>
				<tr align="center">
					<td width="300" height="40"align="right">卖家留言:</td>
					<td width="400" height="40"align="left"><input name="text" type="text"
						class="textbox" id="text" size="24" maxlength="100"></td>
				</tr>
				<tr align="center">
					<td height="25" colspan="2" align="center"><input
							name="submit" type="submit" value="生成订单" class="button" />&nbsp;
					</td>
				</tr>


			</table>
			
		</div>
	</div>
	</form>
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