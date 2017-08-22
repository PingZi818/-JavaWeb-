package com.zhxy.util;

import java.sql.*;

public class DataBaseUtil {
	private static final String DRIVER="com.mysql.jdbc.Driver";
	private static final String URL="jdbc:mysql://localhost:3306/zh_database?useUnicode=true&characterEncoding=UTF8";
	private static final String USER="root";
	private static final String PWD="123456";

public static Connection getConnection(){
	try {
		Class.forName(DRIVER);
		return DriverManager.getConnection(URL,USER,PWD);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;	
}

public static void close(Connection conn,PreparedStatement pst,ResultSet rs){
	try {
		if(rs!=null){
			rs.close();   
		}
		if(pst!=null){
			pst.close();   
		}
		if(conn!=null){
			conn.close();  
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
