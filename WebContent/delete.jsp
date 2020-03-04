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
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                                        
    <%          
    String delete=request.getParameter("Delete");
    Connection con=ConnectionDb.createConnection();
    Statement st=con.createStatement();
    st.executeUpdate("delete from AddItem where Commidity_Name='"+delete+"'");
    response.sendRedirect("home.jsp");
    %>


</body>
</html>