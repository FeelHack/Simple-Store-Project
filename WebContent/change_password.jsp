<%
	if(session.getAttribute("rocky")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <jsp:include page="homeHeader.jsp"></jsp:include>

        <h2>Change Password</h2>
        
         <pre>
          <form action="change_.jsp">
              Enter User Id   <input type="password" name="UserId"> 
              Enter New Password:   <input type="password" name="NewPassword">
             
              <input type="submit" value="Change">
          </form>  
          </pre>


<jsp:include page="homeFooter.jsp"></jsp:include>

</body>
</html> 