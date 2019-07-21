<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<body style="background-color:lightskyblue;">
    <title>CNS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</head>
<body>
<div class="container">
        <form class="form-inline" action = "info">
        <input type="text" name = "studentId" class="form-control mb-2 mr-sm-2 mb-sm-0" id = "inlineFormInput" placeholder="Enter Student ID"/>
        <button type = "Submit">search</button>
        </form>
    <h2>Student Details</h2>
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>gpa</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items ="${students}" var = "student">
        <tr>
            <td>${student.id}</td>
            <td>${student.firstName} ${student.lastName}</td>
            <td>${student.gpa}</td>
            <td>
                <a href="<c:url value='/edit/${student.id}'/>"><button name="Edit" class ="btn btn-primary">Edit

                </button></a>

                <button name="Delete" class ="btn btn-danger">Delete</button>

            </td>
        </tr>
        </c:forEach>

</body>
</html>