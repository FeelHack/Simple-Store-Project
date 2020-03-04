<%
	if(session.getAttribute("rocky")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

	<script>
             function msg()
             {
            	 alert("Item Added Successfully!!");
             }
 </script>

	<div id="id">
		<pre> 
<caption>ADD ITEM</caption>
    <form action="com.controllerservlet.AddItemController" method="post">
    Enter the Commidity Name 
    <input type="text" name="Commidity_Name">
    Enter the Price of Cs  
    <input type="text" name="Price_Cs">
    Enter Cs Capacity        
    <input type="text" name="Cs_Capacity">
    Enter the Unit  Price   
    <input type="text" name="Unit_Price">
     MRP of Unit Price         
      <input type="text" name="Mrp_Of_Unit">  

    <input type="submit" onclick="msg()">

    </form>
        </pre>
	</div>

</body>
</html>