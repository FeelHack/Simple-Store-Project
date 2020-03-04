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
            <h1>You Are in Customize Page </h1>
            
            <jsp:include page="homeFooter.jsp"></jsp:include>
             
</body>
</html>