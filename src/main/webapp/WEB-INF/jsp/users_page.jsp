<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${users}" var="user">

   <p> ${user.email}
     ${user.name}</p>
    </c:forEach>