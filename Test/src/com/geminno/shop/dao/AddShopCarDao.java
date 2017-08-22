package com.geminno.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.geminno.shop.entity.AddShopCar;
import com.geminno.shop.entity.Userinto;
import com.geminno.shop.entity.Userinto_type;
import com.geminno.shop.util.DataBaseUtil;

public class AddShopCarDao {

	private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    
    /*
     *通过用户名和密码查找
     */
	
    public Userinto findBynameAndPassword(String username,String password){
    	
    	  conn = DataBaseUtil.getConnection();
	        	if(conn!=null){
	        		try {
						pst = conn.prepareStatement("SELECT * FROM user WHERE username=? and password=?");
						pst.setString(1, username);
						pst.setString(2, password);
                        rs = pst.executeQuery();
                        if(rs.next()){
                 	    Userinto userinto = new Userinto(rs.getInt("userid"), rs.getString("username"),rs.getString("password"));
                               return userinto;
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


/*
 * 通过查询来显示产品信息
 */
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
       
  /*
   * 通过type_id 查找名字
   */
       
     
       public Userinto_type findidByname(int type_id ){
        conn = DataBaseUtil.getConnection();
  	   if(conn!=null){
  		  try {
  			  	  pst = conn.prepareStatement("SELECT * FROM phone_type where type_id=?");
				  pst.setInt(1, type_id);          	   
				  rs=pst.executeQuery();
				  if(rs.next()){
					  Userinto_type userinto_type =  new Userinto_type(rs.getInt("type_id"),rs.getString("type_name"));
					  return userinto_type;
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
   
       /*
        * 通过id 查找名字
        */
            public AddShopCar findnameByid(int id){
             conn = DataBaseUtil.getConnection();
       	   if(conn!=null){
       		  try {
       			  	  pst = conn.prepareStatement("SELECT * FROM goods where id=?");
     				  pst.setInt(1, id);          	   
     				  rs=pst.executeQuery();
     				  if(rs.next()){
     					 AddShopCar userinto_Goods =  new AddShopCar(rs.getInt("type_id"),rs.getString("product_name"),rs.getDouble("price"),rs.getInt("number"));
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
        
   /*
    * 通过id删除Hashmap中的元素          
    */
    	
      public boolean delete(int id ){
    	               
    	  return false;
      } 
}
   
