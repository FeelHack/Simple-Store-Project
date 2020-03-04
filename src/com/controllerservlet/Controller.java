package com.controllerservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao_logic.FetchData;
import com.model.Login;

/**
 * Servlet implementation class Controller
 */
/**
 * @author giveu
 *
 */
@WebServlet("/com.controllerservlet.Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id=request.getParameter("Id");
		String password=request.getParameter("Password");
		
		Login r=new Login();
		     r.setId(id);
		     r.setPassword(password);
		    
		
			int check=0;
			try {
				check = FetchData.fetch(r);
				
			    } catch (ClassNotFoundException e) {
				     e.printStackTrace();
			    } catch (SQLException e) {
				     e.printStackTrace();
			    }		
			if (check>0) 
			{
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("rocky", id);
				response.sendRedirect("home.jsp");
			}		
			else
			{
				response.sendRedirect("login.jsp?Wrong User Id And Password");
			}
	   }
	 
		
		
	}




