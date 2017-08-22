<%@page import="com.gaobo.li.shixi.entity.Userinfo"%>
<%@page import="com.gaobo.li.shixi.dao.UserinfoDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <%
    //设置编码格式
	request.setCharacterEncoding("utf-8");

	//获取参数
	request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String sql = "select * from userinfo where username= ?";

Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
PreparedStatement pst=null;
ResultSet rs=null;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/database?useUnicode=true&characterEncoding=UTF8","root","root");
pst=conn.prepareStatement(sql);
pst.setString(1, username);
rs=pst.executeQuery();
if(rs.next()){
	out.print("用户名已存在!");

}else{
	
    int userpasswd= Integer.parseInt(request.getParameter("userpasswd"));
	int age= Integer.parseInt(request.getParameter("age"));
	String sex=request.getParameter("sex");
	int tel= Integer.parseInt(request.getParameter("tel"));
	String address=request.getParameter("address");
	
	UserinfoDao userinfodao = new UserinfoDao();
	Userinfo userinfo = new Userinfo(username,userpasswd,age,sex,tel,address);
	boolean result = userinfodao.insertUserinfo(userinfo);
	if(result){
	    response.sendRedirect("login.html");
	}else{
		response.sendRedirect("register.html");
	}
	rs.close();
	pst.close();
	conn.close();
}

	
     %>
  </body>
</html>