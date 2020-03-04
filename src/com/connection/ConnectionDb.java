package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author giveu
 *
 *         Connection Class --This Class is used to make Connection with
 *         Database(Mysql)
 *
 *         Date-25/01/2020
 */
public class ConnectionDb {

	public static Connection createConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sanjay", "root", "FeelDream");
		return con;
	}
}
