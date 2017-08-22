package com.fashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.fashion.entity.Good;
import com.fashion.util.DataBaseUtil;


public class GoodDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public List<Good> findAll() {
		conn = DataBaseUtil.getConnection();
		if (conn != null) {
			List<Good>goods = new ArrayList<Good>();
			try {
				pst = conn.prepareStatement("select * from good");
				rs = pst.executeQuery();
				while (rs.next()) {
					Good good = new Good(
							rs.getInt("gid"), 
							rs.getString("good"),
							rs.getString("brand"),
							rs.getString("kind"),
							rs.getString("skill"),
							rs.getDouble("price"),
							rs.getString("gphoto"));
					goods.add(good);
				}
				return goods;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DataBaseUtil.close(conn, pst, rs);
			}
		}
		return null;
	}

public Good findnameByid(int gid){
    conn = DataBaseUtil.getConnection();
	   if(conn!=null){
		   //List<Good> goods = new ArrayList<Good>();
		  try {
			  pst = conn.prepareStatement("SELECT * FROM good where gid=?");
			  pst.setInt(1, gid);          	   
			  rs=pst.executeQuery();
			  if(rs.next()){
				 Good userinto_Goods =  new Good(
						    rs.getInt("gid"), 
							rs.getString("good"),
							rs.getString("brand"),
							rs.getString("kind"),
							rs.getString("skill"),
							rs.getDouble("price"),
							rs.getString("gphoto"));
				  return userinto_Goods;
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
/*public Good findnameBybrand(String brand){
    conn = DataBaseUtil.getConnection();
	   if(conn!=null){
		   List<Good> goods = new ArrayList<Good>();
		  try {
			  pst = conn.prepareStatement("SELECT * FROM good where brand=?");
			  pst.setString(1, brand);          	   
			  rs=pst.executeQuery();
			  if(rs.next()){
				 Good userinto_brands =  new Good(
						    rs.getInt("gid"), 
							rs.getString("good"),
							rs.getString("brand"),
							rs.getString("kind"),
							rs.getString("skill"),
							rs.getDouble("price"),
							rs.getString("gphoto"));
				  return userinto_brands;
               }
			  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DataBaseUtil.close(conn, pst, rs);
		}
		
	   }
	 return null;
	 
 }*/

public List<Good> findBybrand(String brand){
	conn = DataBaseUtil.getConnection();
	if(conn!=null){
		List<Good> brands = new ArrayList<Good>();
		try {
			pst = conn.prepareStatement("select * from good where brand like ?");
			pst.setString(1, "%" + brand + "%");
			rs = pst.executeQuery();
			while(rs.next()){
				Good goodbrand = new Good(
						rs.getInt("gid"), 
						rs.getString("good"),
						rs.getString("brand"),
						rs.getString("kind"),
						rs.getString("skill"),
						rs.getDouble("price"),
						rs.getString("gphoto"));
				brands.add(goodbrand);
			}
			return brands;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DataBaseUtil.close(conn, pst, rs);
		}
	}
	return null;
}

public Good findnameBykind(String kind){
    conn = DataBaseUtil.getConnection();
	   if(conn!=null){
		   //List<Good> goods = new ArrayList<Good>();
		  try {
			  pst = conn.prepareStatement("SELECT * FROM good where kind=?");
			  pst.setString(1, kind);          	   
			  rs=pst.executeQuery();
			  if(rs.next()){
				 Good userinto_kinds =  new Good(
						    rs.getInt("gid"), 
							rs.getString("good"),
							rs.getString("brand"),
							rs.getString("kind"),
							rs.getString("skill"),
							rs.getDouble("price"),
							rs.getString("gphoto"));
				  return userinto_kinds;
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
}