<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Date"%>
<%@page import="com.gaobo.li.shixi.entity.Manager"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
</head>
<body>
<%

request.setCharacterEncoding("utf-8");

//判断验证码输入是否正确
		String checkcode = request.getParameter("checkcode");
		String checkcode_session = (String) request.getSession().getAttribute(
						"checkcode_session");
		// 删除session中验证码
		request.getSession().removeAttribute("checkcode_session");
	
		//验证码不正确
		if (checkcode_session == null || !checkcode_session.equals(checkcode)) {
			out.print("验证码错误!");
			return;
		}

String mname=request.getParameter("mname");
String mpasswd=request.getParameter("mpasswd");
out.print(mname+"-"+mpasswd);
String sql="select * from manager where mname=? and mpasswd=?";


Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
PreparedStatement pst=null;
ResultSet rs=null;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/database?useUnicode=true&characterEncoding=UTF8","root","root");
pst=conn.prepareStatement(sql);
pst.setString(1, mname);
pst.setString(2,mpasswd);
rs=pst.executeQuery();
if(rs.next()){
	//response:响应
	response.sendRedirect("GoodManage.jsp");
}else{
	out.print("登陆失败！");
}
rs.close();
pst.close();
conn.close();


%>
</body>
</html>