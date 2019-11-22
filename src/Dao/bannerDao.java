package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Banner;

public class bannerDao {
	public static List<Banner> loadDataBanner(Connection conn) throws SQLException {
		ArrayList<Banner> list = new ArrayList<Banner>();
		String sql =  "SELECT * FROM websitehoctienganh.banner";
		PreparedStatement pst = null;
		pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			Banner bn = new Banner();
			bn.setBannerName(rs.getString("bannerName"));
			bn.setBannerContent(rs.getString("bannerContent"));
			bn.setBannerImage(rs.getString("bannerImage"));
		
			list.add(bn);			
		}
		
		return list;
		
	}
}
