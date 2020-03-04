<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/personalize.css">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <style>
   a
   {
     text-decoration:none;
   }
 </style>
</head>
<body>

        <jsp:include page="homeHeader.jsp"></jsp:include>
          
         
         
         
        <div class="row">
        <div class="col-sm-4"> 
       <button class="button button1"><a href="change_password.jsp">CHANGE PASSWORD</a></button><br>
       <button class="button button2"><a href="changeuser_id.jsp">CHANGE USERNAME</a></button><br>
       <button class="button button3"><a href="add_item.jsp">ADD ITEM</a></button>
       </div>
       </div>
</body>
</html>