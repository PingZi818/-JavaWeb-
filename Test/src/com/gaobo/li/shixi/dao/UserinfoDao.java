package com.gaobo.li.shixi.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.gaobo.li.shixi.entity.Userinfo;
import com.fashion.util.DataBaseUtil;
import com.mysql.jdbc.PreparedStatement;

public class UserinfoDao {
	
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	//插入个人信息
	public boolean insertUserinfo(Userinfo userinfo){
		conn=DataBaseUtil.getConnection();
		if(conn!=null){
			try {
				pst=(PreparedStatement) conn.prepareStatement("insert into userinfo(username,userpasswd,age,sex,tel,address) values(?,?,?,?,?,?)");
				pst.setString(1, userinfo.getUsername());
				pst.setInt(2, userinfo.getUserpasswd());
				pst.setInt(3, userinfo.getAge());
				pst.setString(4, userinfo.getSex());
				pst.setInt(5, userinfo.getTel());
				pst.setString(6, userinfo.getAddress());
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
	/**
	 * 删除的方法
	 * @return
	 */
	public boolean deleteUserinfo(String username){
		conn=DataBaseUtil.getConnection();
		if(conn!=null){
			try {
				pst=(PreparedStatement) conn.prepareStatement("delete from userinfo where username=?");
				pst.setString(1, username);
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
	
}

