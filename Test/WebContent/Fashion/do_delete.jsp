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
GoodDao gooddao=new GoodDao();
boolean flag=gooddao.deletegood(id) ;
if(flag){
	request.setAttribute("goods", gooddao.findAll() );
	request.getRequestDispatcher("GoodManage.jsp").forward(request, response);
}else{
	out.print("<script>alert('删除失败');history.back();</script>");
}
%>
</body>
</html>