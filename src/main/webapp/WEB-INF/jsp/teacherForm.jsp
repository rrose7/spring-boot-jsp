<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="header.jsp"/>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



<div class="container">
    <form:form action="/teachers" method="post" modelAttribute="teacher">
        <c:choose>
            <c:when test="${teacher.id > 0}">
                <div class="form-group row">
                    <label for="id" class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-10">
                        <form:input type="text" readonly="true" class="form-control" id="id" path="id"></form:input>
                    </div>
                </div>
            </c:when>
        </c:choose>

        <div class="form-group row">
            <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" id="firstname" path="firstname"></form:input>
            </div>
        </div>
        <div class="form-group row">
            <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" id="lastname" path="lastname"></form:input>
            </div>
        </div>
        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">address</label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" id="subject" path="address"></form:input>
            </div>
        </div>
        <div class="form-group row">
            <label for="subject" class="col-sm-2 col-form-label">subject</label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" id="subject" path="subject"></form:input>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <button type="submit" class="btn btn-primary pull-right">Submit</button>
            </div>
            <div class="col-sm-6">
                <a class="btn btn-danger" href="<c:url value="/"/>">Cancel</a>
            </div>
        </div>
    </form:form>
</div>

<jsp:include page="footer.jsp"/>



