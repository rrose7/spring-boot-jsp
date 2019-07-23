<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"/>

<div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        ENTER YOUR CHOICE
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" name ="student" href="<c:url value="/students"/>">student</a>
        <a class="dropdown-item" name = "teacher" href="<c:url value="/teachers"/>">teacher</a>
    </div>
</div>



<jsp:include page="footer.jsp"/>

