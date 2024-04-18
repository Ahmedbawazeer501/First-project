package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DbConnection {
	
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Connection con=null;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vtjcc18-2021", "root", "root");	
		return con;
		
	}
	

}
