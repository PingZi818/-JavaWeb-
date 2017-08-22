package com.gaobo.li.shixi.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gaobo.li.shixi.entity.Good;
import com.fashion.util.DataBaseUtil;
import com.mysql.jdbc.PreparedStatement;


public class GoodDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	//插入个人信息
	public List<Good> findAll(){
		conn=DataBaseUtil.getConnection();
		if(conn!=null){
			List<Good> goods=new ArrayList<Good>();
			try {
				pst=(PreparedStatement) conn.prepareStatement("select * from good");
				rs=pst.executeQuery();
				while(rs.next()){
					Good good=new Good(rs.getInt("gid"),rs.getString("good"),rs.getString("brand"),rs.getString("kind"),rs.getString("skill"),rs.getString("price"),rs.getString("gphoto"));
					goods.add(good);
				}
				return goods;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DataBaseUtil.close(conn, pst, rs);
			}
		}
		
		return null;
	}




		public boolean insertGood(Good good){
			conn=DataBaseUtil.getConnection();
			if(conn!=null){
				try {
					pst=(PreparedStatement) conn.prepareStatement("insert into good(gid,good,brand,kind,skill,price,gphoto) values(?,?,?,?,?,?)");
					pst.setInt(1, good.getGid());
					pst.setString(2, good.getGood());
					pst.setString(3, good.getBrand());
					pst.setString(4, good.getKind());
					pst.setString(5, good.getSkill());
					pst.setString(6, good.getPrice());
					pst.setString(7, good.getGphoto());
					int count=pst.executeUpdate();
					if(count>0){
						return true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					DataBaseUtil.close(conn, pst, rs);
				}
			}
			//证明插入时发生了错误
			return false;
		}
		public boolean deletegood(int gid){
			conn=DataBaseUtil.getConnection();
			if(conn!=null){
				try {
					pst=(PreparedStatement) conn.prepareStatement("delete from good where gid=?");
					pst.setInt(1, gid);
					int count=pst.executeUpdate();
					if(count>0){
						return true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					DataBaseUtil.close(conn, pst, rs);
				}
			}
			//证明插入时发生了错误
			return false;
		}
	
		public boolean updateGood(Good good){
			conn=DataBaseUtil.getConnection();
			if(conn!=null){
				try {
					pst=(PreparedStatement) conn.prepareStatement("update good set good=?,brand=?,kind=?,skill=?,price=?,gphoto=? where gid=?");
					pst.setString(1, good.getGood());
					pst.setString(2, good.getBrand());
					pst.setString(3, good.getKind());
					pst.setString(4, good.getSkill());
					pst.setString(5, good.getPrice());
					pst.setString(6, good.getGphoto());
					pst.setInt(7, good.getGid());
					int count=pst.executeUpdate();
					if(count>0){
						return true;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					DataBaseUtil.close(conn, pst, rs);
				}
			}
			//证明插入时发生了错误
			return false;
		}
	
	
		public Good findById(int gid){
			
			conn=DataBaseUtil.getConnection();
			if(conn!=null){
				try {
					pst=(PreparedStatement) conn.prepareStatement("select * from good where gid=?");
					pst.setInt(1, gid);
					rs=pst.executeQuery();
					
					if(rs.next()){
						Good good=new Good(rs.getInt("gid"),rs.getString("good"),rs.getString("brand"),rs.getString("kind"),rs.getString("skill"),rs.getString("price"),rs.getString("gphoto"));
						return good;
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
