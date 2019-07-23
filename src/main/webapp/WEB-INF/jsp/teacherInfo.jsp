<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teacher</title>
</head>
<body
        bgcolor="#E6E6FA">
<div class="container">
    <div class="form-group row">
        <label class="col-2 col-form-label">ID</label>
        <div class="col-10">
            ${teacher.id}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">First Name</label>
        <div class="col-10">
            ${teacher.firstname}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">Last Name</label>
        <div class="col-10">
            ${teacher.lastname}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">address</label>
        <div class="col-10">
            ${teacher.address}
        </div>
    </div>

    <div class="form-group row">
        <label class="col-2 col-form-label">subject</label>
        <div class="col-10">
            ${teacher.subject}
        </div>
    </div>

    <div class="form-group row">
        <a class="btn btn-default" href="<c:url value="/"/>">Main Page</a>
    </div>
</div>


</body>
</html>