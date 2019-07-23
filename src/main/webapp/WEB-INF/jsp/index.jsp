<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>

<div class="dropdown">
    <button class="btn btn-primary " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        SELECT
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" name ="Student" href="<c:url value="/students"/>">Student</a>
        <a class="dropdown-item" name = "Teacher" href="<c:url value="/teachers"/>">Teacher</a>
    </div>
</div>


<jsp:include page="footer.jsp"/>







