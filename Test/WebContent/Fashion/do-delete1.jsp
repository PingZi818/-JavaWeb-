
<%@page import="com.fashion.entity.Good"%><%@page%>
<%@page import="com.fashion.dao.GoodDao"%>
<%@page import="com.fashion.util.DataBaseUtil"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>

 <%
 	/* request.setCharacterEncoding("utf-8");
 	int id = Integer.parseInt(request.getParameter("id"));
 	GoodDao goodDao = new GoodDao();
 	Good userintoGoods = goodDao.findnameByid(id);

 	String good = userintoGoods.getGood();
 	good=null;
 	Double price = userintoGoods.getPrice();
    price=null;
 	id = -1; */
 	int id=Integer.valueOf(request.getParameter("id"));
 	 HashMap<Integer,Integer> buycar;
 	buycar =(HashMap<Integer,Integer>)request.getSession().getAttribute("buycar");
 	buycar.remove(id);
 	session.setAttribute("buycar",buycar);
 	request.getRequestDispatcher("addshopcar.jsp").forward(request,response);
 %>
  </body>
</body>
</html>