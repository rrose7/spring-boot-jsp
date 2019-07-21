<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<body>
<h2><b>Enter the Student details</b></h2>
<body class="container">
<div
        class="clearfix" style="margin-top: 15px;">

</div>
</body>


<div class="row h-75 justify-content-center align-items-center">
    <form action="/update">
        <div class="form-group col-sm-6 offset-sm-3 text-center">
            <label type ="hidden" for="Inputid">ID</label>
            <input type="hidden"name="studentId" class="form-control" id="Inputid"  value="${student.id}" aria-describedby="idHelp" placeholder="Enter id">
            <small id="idHelp" class="form-text text-muted"></small>
        </div>
        <div class="form-group col-xs-2">
            <label for="InputfirstName">FirstName</label>
            <input type="text" class="form-control" name ="firstName" id="InputfirstName" value="${student.firstName}" placeholder="firstName">
        </div>
        <div class="form-group col-xs-2">
            <label for="InputlastName">LastName</label>
            <input type="text" class="form-control" name="lastName" id="InputlastName" value ="${student.lastName}" placeholder="lastName">
        </div>
        <div class="form-group col-xs-2">
            <label for="Inputgpa">GPA</label>
            <input type="text" class="form-control"name="gpa"id="Inputgpa" value="${student.gpa}" placeholder="gpa">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="Check1">
            <label class="form-check-label" for="Check1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="Close" class="btn btn-primary">Close</button>

    </form>
</div>
<div class="form-group row">
    <a class="btn btn-default" href="<c:url value="/"/>">Main Page</a>
</div>




