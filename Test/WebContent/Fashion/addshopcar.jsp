
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
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>BuyCar</title>
<script type="text/javascript">
  
   </script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<link href="<%@page%>css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<body>


	<!-- head -->
	<div class="main">

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
			<div class="head3">
				<div class="log1">
					<a href="fashion.jsp"><img src="images/logo.png" width="200px"
						height="40" alt="" /> </a>
				</div>
				<div class="right">
					<img src="images/right.png" alt="" />
				</div>

			</div>
		</div>
	</div>
	<!-- head -->

	<hr />
	<!-- body-->
	<%
	
	int id = Integer.parseInt(request.getParameter("id"));
	GoodDao goodDao = new GoodDao();
	Good userintoGoods = goodDao.findnameByid(id);
				%>

	<div class="addshopcar-body" align="center"
		id=<%=userintoGoods.getGid()%>>
		<div class="null"></div>
		<form action="order.jsp?id=<%=userintoGoods.getGid()%>" method="post">
			<table height=150px; width=80% border="0" border-color="pink"
				align="center" id=<%=userintoGoods.getGid()%>>

				<thead class="thead" valign="middle">
					<th>Fashiongood &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>价格&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>数量&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>操作&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</th>
				</thead>



				<tbody class="tbody" valign="middle">
					<th id="goodname"><%=userintoGoods.getGood()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th id="price"><%=userintoGoods.getPrice()%>&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th><input class="shuliang" name="number" type="number" id="number"
						value=<%=request.getParameter("number")%> />&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th><a id="a" href="javascript:delete1(this)">删除</a>
					</td>
			</tbody>
				<tfoot class="tfoot" valign="middle" id=<%=userintoGoods.getGid()%>>

					<th valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th><input type="hidden" value="<%=userintoGoods.getGid()%>"></th>
                     
					<th valign="middle" id="buy"><input
							type="submit" value="购买" /></th>
				</tfoot>
			</table>
		</form>
	</div>
	<!-- body-->





	<!--foot-->
	<div class="bigfoot">
		<!--<span id="foot" > </span>-->
		<iframe src="foot.html" width="100%" height="400" frameborder="0"
			scrolling="no"></iframe>
	</div>
	<!--foot-->
</body>
<script type="text/javascript">
function delete1(obj){
	document.getElementById("goodname").innerHTML="";
	document.getElementById("price").innerHTML="";
	var s=document.getElementById("number");
	s.parentNode.removeChild(s);
	var a=document.getElementById("a");
	a.parentNode.removeChild(a);
	var buy=document.getElementById("buy");
	buy.parentNode.removeChild(buy);
}
</script>
</html>
