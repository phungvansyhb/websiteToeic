package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.member;

public class RegisterDao {
	public static boolean Insert(Connection conn , member mb) throws SQLException{
		String sql =  "INSERT INTO websitehoctienganh.member (fullName,membername,memberpass,idcategorymember) VALUES (?,?,?,?)";
		PreparedStatement pst = null;
		pst = conn.prepareStatement(sql);
			pst.setString(1,mb.getFullName() );
			pst.setString(2,mb.getMembername() );
			pst.setString(3,mb.getMemeberpass() );
			pst.setInt(4, 1);
			
		if(pst.executeUpdate()!= 0 )
		return true;
		else return false;
	}
	public static boolean verify(Connection conn , member mb) throws SQLException {
		String sql = "SELECT * From websitehoctienganh.member";
		PreparedStatement pst = null;
		pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			String username = rs.getString("membername");
			if(mb.getMembername().equals(username)) 
				{
					return true;			
				}
		}	
		return false;
	}
}
