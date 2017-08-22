package com.geminno.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.geminno.shop.entity.AddShopCar;
import com.geminno.shop.util.DataBaseUtil;

public class GoodsShowDao {
	private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    public List<AddShopCar> findByname(String type_name){
 	   
 	   conn = DataBaseUtil.getConnection();
 	   if(conn!=null){
 		  try {
 			  List<AddShopCar> userintoGoods_list = new ArrayList<AddShopCar>();
				pst = conn.prepareStatement("SELECT * FROM goods where type_id=(SELECT type_id FROM phone_type WHERE type_name=?)");
				  pst.setString(1, type_name);          	   
				  rs=pst.executeQuery();
				  while(rs.next()){
					  AddShopCar userinto_Goods =  new AddShopCar(rs.getInt("id"),rs.getString("product_name"),rs.getDouble("price"),rs.getInt("number"));
					   userintoGoods_list.add(userinto_Goods);
					  }
				  return userintoGoods_list;
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
