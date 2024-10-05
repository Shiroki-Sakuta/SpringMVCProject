package com.spring.repository;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRepository {
	public int insertUser(com.spring.model.UserBean bean)
	{
		int i = 0;
		
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("INSERT INTO user_images (name, image) VALUES (?, ?)");
			ps.setString(1, bean.getName());

			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Insert error :" + e);
		}
		
		return i;
	}
	
	public boolean checkEmail(String email)
	{
		boolean check = false;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from user where email = ?;");
			ps.setString(1, email);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				check = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("check email : "+ e.getMessage());
		}
		return check;
	}
	
	
	public com.spring.model.UserBean LoginUser(com.spring.model.UserBean bean)
	{
		
		com.spring.model.UserBean user = null;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from user where email = ? and password = ?;");

			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				user = new com.spring.model.UserBean();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Login user : "+ e.getMessage());
		}
		
		return user;
	}
}
