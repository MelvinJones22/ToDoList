<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
    .table-container {
        margin-left: 10%;
        margin-right: 10%;
         width: 80%; /* Adjust the width as needed */
    }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>




</head>
<body>

	
			<!-- get user from session -->
		<% User user = (User)request.getSession().getAttribute("user");%>
		<% String username = user.getUsername(); %>
		
		<h2>Welcome <%= username %></h2>
		<h4>Email: <%= user.getUseremail() %></h4>
		
		<% String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
		<img alt="" src="data:image/jpeg;base64,<%= image %>" width="150" height="100">
		 	
		<a href="addtask.jsp" style="color:red;">Add Task</a> 	
		
		<h3>Tasks</h3><br>
		
		<% List<Task> tasks = (List)request.getAttribute("tasks"); %>
		<div class="table-container"></div>
		<table class="table table-info" >
		<tr class="table-info" >
		<th>#</th>
		<th>title</th>
		<th>description</th>
		<th>priority</th>
		<th>due date</th>
		<th>status</th>
		<th>delete</th>
		<th>edit</th>
		</tr>
		
		<% int num = 1; %>
		<% for(Task task :tasks){ %>
		
		
		<tr class="table-info">
		<td class="table-info"><%= num %></td>
		<td class="table-info"><%= task.getTasktitle() %></td>
		<td class="table-info"><%= task.getTaskdescription() %></td>
		<td class="table-info"><%= task.getTaskpriority()%></td>
		<td class="table-info"><%= task.getTaskduedate() %></td>
		<td class="table-info"><%= task.getTaskstatus() %></td>
		<td class="table-info"><a href="delete?id=<%= task.getTaskid() %>">Delete</a></td>
		<td class="table-info"><a href="edit?id=<%= task.getTaskid() %>">Edit</a></td>
		</tr>
		
		<% num +=1; %>
		<% } %>
		
		</table>
</body>
</html>
