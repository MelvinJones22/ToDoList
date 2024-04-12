<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   

    .form-card {
        max-width: 400px; /* Adjust form width as needed */
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); /* Adjust background color and opacity as needed */
        border-radius: 10px;
    }
</style>
</head>
<body class="my-5">
<%@ include file="template.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card form-card">
                <div class="card-body">
                    <form action="addtask" method="post">
                        
                        <div class="mb-3">
                            <label for="tasktitle" class="form-label small">Task Title</label>
                            <input type="text" class="form-control form-control-sm" id="tasktitle" name="tasktitle" required>
                        </div>
                        <div class="mb-3">
                            <label for="taskdescription" class="form-label small">Task Description</label>
                            <input type="text" class="form-control form-control-sm" id="taskdescription" name="taskdescription">
                        </div>
                        <div class="mb-3">
                            <label class="form-label small">Priority</label>
                            <div>
                                <label for="low">
                                    <input type="radio" id="low" value="low" name="taskpriority" class="form-check-input"> Low
                                </label>
                            </div>
                            <div>
                                <label for="medium">
                                    <input type="radio" id="medium" value="medium" name="taskpriority" class="form-check-input"> Medium
                                </label>
                            </div>
                            <div>
                                <label for="high">
                                    <input type="radio" id="high" value="high" name="taskpriority" class="form-check-input"> High
                                </label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="taskduedate" class="form-label small">Due Date</label>
                            <input type="date" class="form-control form-control-sm" id="taskduedate" name="taskduedate">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
