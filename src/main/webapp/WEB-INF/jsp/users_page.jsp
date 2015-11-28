<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

user created!


<c:forEach items="${users}" var="user">


   <p> ${user.email}</p>
    <p> ${user.passwordHash}</p>
    </c:forEach>