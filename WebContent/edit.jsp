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
<%@page import="java.sql.ResultSet"%>
   
   
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AddItem</title>
    <link rel="stylesheet" type="text/css" href="css/add_item.css">
</head>
<body>
 <jsp:include page="homeHeader.jsp"></jsp:include>
 
 
 
       <div id="id">
        <pre>
<caption>EDIT ITEM</caption>
    <form action="">
    
    <%
        String item=request.getParameter("Name");
        Connection con=ConnectionDb.createConnection();
        PreparedStatement pst=con.prepareStatement("select *from AddItem where Commidity_Name='"+item+"' ");
        ResultSet rs=pst.executeQuery();
        
        while(rs.next()){
 %>
    
    Enter the Commidity Name 
    <input type="text" name="Commidity" value='<%=rs.getString("Commidity_Name")%>'>
    Enter the Price of Cs   
    <input type="text" name="Price" value='<%=rs.getString("Price_Of_Cs")%>'>
    Enter Cs Capacity        
    <input type="text" name="Cs" value='<%=rs.getString("Cs_Capacity")%>'>
    Enter the Unit  Price   
    <input type="text" name="Unit" value='<%=rs.getString("Unit_Price")%>'>
     MRP of Unit Price         
    <input type="text" name="Mrp" value='<%=rs.getString("Mrp_Of_Unit")%>'>  
    
<%
        }
%>
    <input type="submit" value="UPDATE">
    </form>
        </pre>
     </div>
     
     
     <%
          String a=request.getParameter("Commidity");
          String b=request.getParameter("Price");
          String c=request.getParameter("Cs");
          String d=request.getParameter("Unit");
          String e=request.getParameter("Mrp");
          
          if(a!=null && b!=null && c!=null && d!=null && e!=null)
          {
        	  String qry="update AddItem set Price_Of_Cs=?,Cs_Capacity=?,Unit_Price=?,Mrp_Of_Unit=? where Commidity_Name='"+a+"'";
        	  PreparedStatement pp=con.prepareStatement(qry);
        	  pp.setString(1, b);
        	  pp.setString(2, c);
        	  pp.setString(3, d);
        	  pp.setString(4, e);
        	  pp.executeUpdate();
        	  
              response.sendRedirect("home.jsp?Update !! Success");
          }
      %>
  
</body>
</html>