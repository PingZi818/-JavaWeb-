package com.fashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fashion.entity.Skill;
import com.fashion.entity.Skill;
import com.fashion.util.DataBaseUtil;

public class SkillDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	public  Skill findnameBysid(int sid){
	    conn = DataBaseUtil.getConnection();
		   if(conn!=null){
			  try {
				  	  pst = conn.prepareStatement("SELECT gphoto FROM good  when sid=?");
				  pst.setInt(1, sid);          	   
				  rs=pst.executeQuery();
				  if(rs.next()){
					  Skill skillto =  new  Skill(rs.getInt("sid"), rs.getString("skill"));
					  return skillto;
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
	public List<Skill> findAll() {
		conn = DataBaseUtil.getConnection();
		if (conn != null) {
			List<Skill>skills = new ArrayList<Skill>();
			try {
				pst = conn.prepareStatement("select * from brand");
				rs = pst.executeQuery();
				while (rs.next()) {
					Skill skill = new Skill(rs.getInt("sid"), rs.getString("skill"));
					skills.add(skill);
				}
				return skills;
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
