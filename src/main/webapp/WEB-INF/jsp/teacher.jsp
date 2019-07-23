<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>
<h2 style = "text-align:center;">Teacher Details</h2>
<div class="container">
    <div class="col text-center">
    <form class="form-inline" action = "teacherInfo">
        <input type="text" name = "teacherId" class="form-control mb-2 mr-sm-2 mb-sm-0" id = "inlineFormInput" placeholder="Enter Teacher ID"/>
        <button type = "Submit">search</button>
    </form>
    <div class="col col-md-2">
        <a class="btn btn-primary" href="<c:url value="/teachers/add"/>">Insert New Details</a>
    </div>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>address</th>
            <th>subject</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items ="${teachers}" var = "teacher">
            <tr>
                <td>${teacher.id}</td>
                <td>${teacher.firstname} ${teacher.lastname}</td>
                <td>${teacher.address}</td>
                <td>${teacher.subject}</td>
                <td>
                    <a class="btn btn-primary" href="<c:url value="/teachers/${teacher.id}/edit"/>">Edit</a>

                    <a class ="btn btn-danger" href="<c:url value="/teachers/${teacher.id}/delete"/>">Delete</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>



<jsp:include page="footer.jsp"/>
