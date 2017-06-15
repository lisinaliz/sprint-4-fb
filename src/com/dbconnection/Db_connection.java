package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


	public class Db_connection {

	
	public Connection conn = null;
	PreparedStatement pt;
	public Db_connection()  {
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			this.conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/facebook", "root", "");
			if (this.conn != null) {
				
				System.out.println("connected");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void main(String[] args) throws ClassNotFoundException {
		Db_connection dbcon = new Db_connection();

	}

}


