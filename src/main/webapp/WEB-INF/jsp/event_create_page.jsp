<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<html>
<head>

</head>
<body>

<form method="post" action="/event">
    <input name="name" type="text">
    <input name="description" type="text">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div class="form-group">
        <label class="control-label" for="date">Enter hire date</label>
        <input name="eventDate" type="date" id="date" class="form-control"
               value="<%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>">
    </div>
<%--    <div class="form-group">
        <label class="control-label" for="time">Enter hire date</label>
        <input name="eventTime" type="time" id="time" class="form-control"
               value="<%= new SimpleDateFormat("HH-mm").format(new Date()) %>">
    </div>--%>
    <button type="submit">create event</button>

</form>



</body>
</html>