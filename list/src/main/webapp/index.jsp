<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
        
        .center-right {
            position: absolute;
            top: 50%;
            right: 25%;
            transform: translate(0, -50%);
            text-align: center;
        }
    </style>
</head>
<body>

 <%@ include file="template.jsp" %>
	
	<div class="center-right">
		<a href="login.jsp">Login</a><br>
	<a href="signup.jsp">SignUp</a>
	
	</div>
	
	
	
</body>
</html>
