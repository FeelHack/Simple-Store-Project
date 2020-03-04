package com.dao_logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.ConnectionDb;
import com.model.AddItem;

/**
 * @author giveu
 *
 *           --This Class is used to Additem to Database 
 *
 *
 */
public class AddItemToDatabase {

	public static int addItemToDatabase(AddItem add) throws ClassNotFoundException, SQLException
	{
		int result=0;
//		import Connection from Connection Package
		Connection con=ConnectionDb.createConnection();
//		Query for insert data to Database Table
		String sql="insert into AddItem(Commidity_Name,Price_Of_Cs,Cs_Capacity,Unit_Price,Mrp_Of_Unit)values(?,?,?,?,?)";
		
		PreparedStatement pst=con.prepareStatement(sql);
		
		pst.setString(1, add.getCommidity_Name());
		pst.setString(2, add.getPrice_Of_Cs());
		pst.setString(3, add.getCs_Capacity());
		pst.setString(4, add.getUnit_Price());
		pst.setString(5, add.getMrp_Of_Unit());
		result=pst.executeUpdate();
		if(result>0)
		{
			result=1;
		}
		return result;
		
	}
	
	
}
