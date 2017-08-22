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
//设置编码格式
request.setCharacterEncoding("utf-8");
//获取参数

String good=request.getParameter("good");
String brand=request.getParameter("brand");
String kind=request.getParameter("kind");
String skill=request.getParameter("skill");
String price=request.getParameter("price");
String gphoto=request.getParameter("gphoto");
int id= Integer.parseInt(request.getParameter("id"));

GoodDao gooddao=new GoodDao();
//装载数据
Good good1=new Good(id,good,brand,kind,skill,price,gphoto);
boolean result=gooddao.updateGood(good1) ;


if(result){
	response.sendRedirect("GoodManage.jsp");
}
else{
	out.print("错误");
}

%>
</body>
</html>