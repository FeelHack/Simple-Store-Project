<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<%@page import="java.sql.Connection" %>
<%@page import="com.connection.ConnectionDb" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

  <!DOCTYPE html>
   <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <style>
    
   #hh {
        border-radius: 25px;
        border: 2px solid #73AD21;
        padding: 20px; 
        width: 125px;
        height: 50px;   
        text-align: center;
        float: right; 
        margin-left: 10px;
      }
      table,th,td
      {
        border:2px solid grey;
        border-collapse:collapse;
        padding:3px;
        text-align:center;
        margin-left:400px;
      }
      #tt
      {
          color:black;
          background-color:green;
          padding:5px;   
      }
      @media(max-width:786px)
      {
       #hh {
        border-radius: 25px;
        border: 2px solid #73AD21;
        padding: 20px; 
        width: 125px;
        height: 50px;   
        text-align: center;
        float: right; 
        margin-left: 10px;
      }
      table,th,td
      {
        border:2px solid grey;
        border-collapse:collapse;
        padding:3px;
        text-align:center;
        margin-left:1px;
      }
      #tt
      {
          color:black;
          background-color:green;
          padding:5px;   
      }
      }
    </style>   
</head>

<body>

         <a href="add_item.jsp"><p id="hh">ADD ITEM</p></a>

<!-- Simple Search Bar Design -->
   <form action="search.jsp">
        <div class="form-group">
             <input type="text" placeholder="search..." name="ItemName">
             <button type="submit"><i class="fa fa-search"></i></button>
        </div>
   </form>
   
         <table>
                <tr>
            		 <th>Commidity_Name </th>
            		 <th>Price_Of_Cs</th>
            		 <th>Cs_Capacity</th>
            		 <th>Unit_Price</th>
            	     <th>Mrp_Of_Unit</th>
            		 <th>Action</th>     
               </tr>    
   
   <%               
           Connection con=ConnectionDb.createConnection();
           PreparedStatement pst=con.prepareStatement("select *from AddItem");
           ResultSet rs=pst.executeQuery();
                   
           while(rs.next())
           {
        	   %>
            					<tr>
            								<td><%=rs.getString("Commidity_Name")%></td>
            								<td><%=rs.getString("Price_Of_Cs")%></td>
            								<td><%=rs.getString("Cs_Capacity")%></td>
            								<td><%=rs.getString("Unit_Price")%></td>
            								<td><%=rs.getString("Mrp_Of_Unit")%></td>
            							    <td><a href="edit.jsp?Name=<%=rs.getString("Commidity_Name")%>"><button id='tt'>Edit</button></a> <a href="delete.jsp?Delete=<%=rs.getString("Commidity_Name")%>"><button id='tt'>Delete</button></a></td>
            				  </tr>
            				  
           <% } %> 	
    </table>
    
    
    
    
    
</body>
</html>