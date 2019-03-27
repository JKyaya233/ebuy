package com.lcvc.ebuy_maven_ssm.dao;

import com.lcvc.ebuy_maven_ssm.model.Admin;
import com.lcvc.ebuy_maven_ssm.util.SHA;
import sun.security.util.Password;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {
	/**
	 * 根据账户名和密码去数据库查询，进行登录判断
	 * @param username 账户名
	 * @param password 密码
	 * @return true表示登录成功,false表示登录失败
	 */
	public boolean login(String username,String password){
		password= SHA.getResult(password);
		boolean judge=false;//表示登录状态，默认失败
		Connection conn=DBHelper.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			String sql="select * from admin where username=? and password=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.next()){//如果能够从数据库找到记录
				judge=true;
			}			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBHelper.closeConn(conn,pstmt,rs);
		}
		return judge;
	}
	public Admin GetAdmin(String username){
		Admin admin=null;

		Connection conn=DBHelper.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			String sql="select * from admin where username=?  ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs=pstmt.executeQuery();
			if(rs.next()){//如果能够从数据库找到记录
			admin=new Admin();
			admin.setId(rs.getInt("id"));
			admin.setName(rs.getString("name"));
			admin.setUsername(rs.getString("username"));
			admin.setPassword(rs.getString("password"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBHelper.closeConn(conn,pstmt,rs);
		}
		return admin;
	}
	
	
	public static void main(String[] args) {
		AdminDao adminDao=new AdminDao();
		System.out.println(adminDao.login("admin", "123"));
		System.out.println(adminDao.login("user", "123"));
		System.out.println(adminDao.login("user", "123456"));
	}
}
