<%@page import="java.util.List"%>
<%@page import="com.gaobo.li.shixi.entity.Good"%>
<%@page import="com.gaobo.li.shixi.dao.GoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品管理</title>
  <link rel="stylesheet" href="css/goodmanage.css">
</head>
<body>
<div class="container" >

<table align="center" width="1000px">
<caption style="font-size: 36px; font-style: normal; font-weight: bolder;">商品清单管理</caption>

<tr>
	<td>编号</td>
	<td>商品介绍</td>
	<td>品牌</td>
	<td>分类</td>
	<td>功效</td>
	<td>价格</td>
	<td>图片</td>
	<td>删除</td>
	<td>修改</td>
</tr>

<%
//读取转发过来的数据
//int id = Integer.parseInt(request.getParameter("id"));
				GoodDao goodDao1 = new GoodDao();
				List<Good> userintoGoods1 = goodDao1.findAll();

for(Good good1:userintoGoods1){
%>	
<tr>
	<td><%=good1.getGid() %></td>
	<td><%=good1.getGood() %></td>
	<td><%=good1.getBrand() %></td>
	<td><%=good1.getKind() %></td>
	<td><%=good1.getSkill() %></td>
	<td><%=good1.getPrice() %></td>
	<td><%=good1.getGphoto() %></td>
	<td><a href="do_delete.jsp?id=<%=good1.getGid()  %>">删除</a></td>
	<td><a href="edit.jsp?id=<%=good1.getGid() %>">修改</a></td>
</tr>
<%
}
%>
</table>

</div>

</body>
</html>