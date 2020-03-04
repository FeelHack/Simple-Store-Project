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
           String password=request.getParameter("Password");
           String newId=request.getParameter("NewUserId"); 
           
           Connection con=ConnectionDb.createConnection();
           PreparedStatement pst=con.prepareStatement("update Test set Id=? where Password=?");
           pst.setString(1, newId);
           pst.setString(2, password);
              
           int i=pst.executeUpdate();
           
           if(i>0)
           {
        	   session.setAttribute("rocky", newId);
        	   response.sendRedirect("home.jsp?Success");
           }
           else
           {
        	   response.sendRedirect("change.jsp?Error");
           }
          
           
         
    %>