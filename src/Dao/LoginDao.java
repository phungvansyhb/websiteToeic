package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.member;

public class LoginDao {
	public static boolean Authenicate(Connection conn , member mb) throws SQLException {
		String sql = "SELECT * From websitehoctienganh.member";
		PreparedStatement pst = null;
		pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			String username = rs.getString("membername");
			String userpass = rs.getString("memberpass");
			if(mb.getMembername().equals(username) && mb.getMemeberpass().equals(userpass)) return true;			
		}	
		return false;
	}
	public static int Gettype(Connection conn , member mb) throws SQLException {
		String sql = "SELECT idcategorymember FROM websitehoctienganh.member where membername='"+mb.getMembername()+"'";
		//System.out.println(sql);
		PreparedStatement pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		if(rs.first())
		{	
			int type = rs.getInt("idcategorymember");
			//System.out.println(type);
			return type;
		}
		return 0;
	}
}
