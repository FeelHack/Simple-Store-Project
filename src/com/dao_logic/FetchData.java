package com.dao_logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.ConnectionDb;
import com.model.Login;

/**
 * @author giveu
 *
 */
public class FetchData {

	
	public static int fetch(Login r) throws ClassNotFoundException, SQLException
	{
		int status=0;
		Connection con=ConnectionDb.createConnection();
		
		String sql="select * from Test where Id=? and PassWord=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, r.getId());
		pst.setString(2, r.getPassword());
		ResultSet rs=pst.executeQuery();
		if (rs.next()) 
		{
			status=1;
		}
		
		return status;
		
	}
	
	
}
