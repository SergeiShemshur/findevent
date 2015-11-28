

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>create page</title>
    <script src="/resources/js/jquery-2.1.4.min.js"></script>
    <script src="/resources//bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

${status.error ? 'has-error' : ''}

<form:form method="post" modelAttribute="form" action="${userActionUrl}">
    <form:errors cssClass="alert-success"/>
    <form:input path="email" type="text"/>
    <form:input path="password" type="text" />
    <form:input path="passwordRepeated" type="text" />
    <form:input path="role" type="text" />
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <button type="submit">create</button>
</form:form>

</body>

</html>
