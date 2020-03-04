<%
	if(session.getAttribute("rocky")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.Connection" %>
<%@page import="com.connection.ConnectionDb" %>
<%@page import="java.sql.PreparedStatement"%>


<%
           String userid=request.getParameter("UserId");
           String newPass=request.getParameter("NewPassword"); 
           
           Connection con=ConnectionDb.createConnection();
           PreparedStatement pst=con.prepareStatement("update Test set PassWord=? where Id=?");
           pst.setString(1, newPass);
           pst.setString(2, userid);
           int i=pst.executeUpdate();    
           if(i>0)
           {
        	   response.sendRedirect("home.jsp?Success");
           }
           else
           {
        	   response.sendRedirect("change.jsp?Error");
           }       
         
    %>