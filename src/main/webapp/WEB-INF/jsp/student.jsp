<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>

<div class="container">
    <form class="form-inline" action = "studentInfo">
        <input type="text" name = "studentId" class="form-control mb-2 mr-sm-2 mb-sm-0" id = "inlineFormInput" placeholder="Enter Student ID"/>
        <button type = "Submit">search</button>
    </form>
    <div class="col col-md-2">
        <a class="btn btn-primary pull-right" href="<c:url value="/students/add"/>">Add</a>
    </div>
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
                    <a class="btn btn-primary" href="<c:url value="/students/${student.id}/edit"/>">Edit</a>

                    </button></a>

                    <button name="Delete" class ="btn btn-danger">Delete</button>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>



<jsp:include page="footer.jsp"/>
