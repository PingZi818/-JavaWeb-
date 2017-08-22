<%@page import="com.gaobo.li.shixi.entity.Good"%>
<%@page import="com.gaobo.li.shixi.dao.GoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
GoodDao gooddao = new GoodDao();
Good good=gooddao.findById(id);
%>
<form action="do_edit.jsp" method="post">
		<input type="hidden" name="id" value="<%=good.getGid() %>"/>
		商品：<input type="text" name="good" value="<%=good.getGood() %>"/>
		品牌：<input type="text" name="brand" value="<%=good.getBrand() %>"/>
		种类：<input type="text" name="kind" value="<%=good.getKind() %>"/>
		功效：<input type="text" name="skill" value="<%=good.getSkill() %>"/>
		价格：<input type="text" name="price" value="<%=good.getPrice() %>"/>
		<input type="hidden" name="gphoto" value="<%=good.getGphoto() %>"/>
		
		<input type="submit" value="提交"/>
</form>
</body>
</html>