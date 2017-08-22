package com.zhxy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zhxy.entity.DingDan;
import com.zhxy.util.DataBaseUtil;

public class DingDanDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	//≤È—Ø–≈œ¢
	public List<DingDan> findAll(){
		conn = DataBaseUtil.getConnection();
		if(conn!=null){
			List<DingDan> dingdans = new ArrayList<DingDan>();
			try {
				pst = conn.prepareStatement("select * from `order`");
				rs = pst.executeQuery();
				while(rs.next()){
					DingDan dingDan = new DingDan(rs.getInt("orderid"),rs.getString("ordertitle"),rs.getInt("orderprice"),rs.getInt("ordernumber"),rs.getString("ordername"),rs.getString("orderadd"));
					dingdans.add(dingDan);
				}
				return dingdans;
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
