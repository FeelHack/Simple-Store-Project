package com.controllerservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao_logic.AddItemToDatabase;
import com.model.AddItem;

/**
 * Servlet implementation class AddItemController
 */
/**
 * @author giveu
 *
 *This is the Servlet Class For Fetching item Details From Client 
 *
 */
@WebServlet("/com.controllerservlet.AddItemController")
public class AddItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Fetching Data From AddItem Jsp Page and Store To AddItem Servlet
		
		String  commidity_Name=request.getParameter("Commidity_Name");
	    String  price_Of_Cs=request.getParameter("Price_Cs");
	    String  cs_Capacity=request.getParameter("Cs_Capacity");
	    String unit_Price=request.getParameter("Unit_Price");
	    String mrp_Of_Unit=request.getParameter("Mrp_Of_Unit");
	    
//	    Set the Fetching Value To AddItem  Model Page Because At the Time of DaoClass We Can Get This Value
	    
	    AddItem add=new AddItem();
	    
	    add.setCommidity_Name(commidity_Name);
	    add.setPrice_Of_Cs(price_Of_Cs);
	    add.setCs_Capacity(cs_Capacity);
	    add.setUnit_Price(unit_Price);
	    add.setMrp_Of_Unit(mrp_Of_Unit);
	    
	    int status=0;
	    try {
			 status= AddItemToDatabase.addItemToDatabase(add);
			 if(status>0)
			 {
				 response.sendRedirect("add_item.jsp?Item Added Successfuly");
			 }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	}

}
