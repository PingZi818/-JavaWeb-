package com.geminno.shop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 数据库连接类
 */

public class DataBaseUtil {

	
	 /*
	 *设置一些静态变量方便调用 
	 */

	    private static final String DRIVER = "com.mysql.jdbc.Driver";
	    private static final String URL="jdbc:mysql://localhost:3306/dzxt?useUnicode=true&characterEncoding=UTF8";
	    private static final String USER="root";
	    private static final String PWD="123456";


     public static Connection getConnection(){
    	 
    	 try {
			Class.forName(DRIVER);
			return DriverManager.getConnection(URL, USER, PWD);
			} catch (SQLException e) {
		  } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  /*
		  Connection conn = null;
			try {
				 conn = DriverManager.getConnection(URL, USER, PWD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("连接失败");
			}
		*/
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

