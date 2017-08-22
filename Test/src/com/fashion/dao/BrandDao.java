package com.fashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fashion.entity.Brand;
import com.fashion.entity.Good;
import com.fashion.util.DataBaseUtil;

public class BrandDao {

	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;

	public List<Brand> findAll() {
		conn = DataBaseUtil.getConnection();
		if (conn != null) {
			List<Brand> brands = new ArrayList<Brand>();
			try {
				pst = conn.prepareStatement("select * from brand limit 18");
				rs = pst.executeQuery();
				while (rs.next()) {
					Brand brand = new Brand(rs.getInt("bid"), rs.getString("brand"), rs.getString("bphoto"));
					brands.add(brand);
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

	public Brand findnameByid(int bid) {
		conn = DataBaseUtil.getConnection();
		if (conn != null) {
			// List<Good> goods = new ArrayList<Good>();
			try {
				pst = conn.prepareStatement("SELECT * FROM brand where bid=?");
				pst.setInt(1, bid);
				rs = pst.executeQuery();
				if (rs.next()) {
					Brand userinto_Brands = new Brand(rs.getInt("bid"), rs.getString("brand"), rs.getString("bphoto"));
					return userinto_Brands;
				}

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
