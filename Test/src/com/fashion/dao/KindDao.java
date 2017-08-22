package com.fashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fashion.entity.Kind;
import com.fashion.entity.Kind;
import com.fashion.util.DataBaseUtil;

public class KindDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	//根据kid找商品及商品图片
	public  Kind findBykid(int kid){
	    conn = DataBaseUtil.getConnection();
		   if(conn!=null){
			  try {
				  	  pst = conn.prepareStatement("SELECT gphoto FROM good where kid=?");
				  pst.setInt(1, kid);          	   
				  rs=pst.executeQuery();
				  if(rs.next()){
					  Kind kindto =  new  Kind(rs.getInt("kid"), rs.getString("kind"));
					  return kindto;
	               }
				  
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DataBaseUtil.close(conn, pst, rs);
			}
			
		   }
		 return null;
		 
	 }
	public List<Kind> findAll() {
		conn = DataBaseUtil.getConnection();
		if (conn != null) {
			List<Kind>kinds = new ArrayList<Kind>();
			try {
				pst = conn.prepareStatement("select * from brand");
				rs = pst.executeQuery();
				while (rs.next()) {
					Kind kind = new Kind(rs.getInt("kid"), rs.getString("kind"));
					kinds.add(kind);
				}
				return kinds;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DataBaseUtil.close(conn, pst, rs);
			}
		}
		return null;
	}
}
