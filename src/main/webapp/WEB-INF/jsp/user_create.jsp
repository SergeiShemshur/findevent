<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>create page</title>
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
</head>
<body>



<div class="container">
    <div class="row center-block">
        <div class="col-md-6 ">
            <h3>User registration</h3>
            <div class="registration ">
                <form:form method="post" modelAttribute="form" action="${userActionUrl}">
                <form:errors cssClass="alert-warning"/>
                <div class="form-group">
        <span class="spacer"><span class="before"></span><span class="text"><label id="jform_spacer-lbl"
                                                                                   class=""><strong
                class="red">*</strong> Required field</label></span><span class="after"></span></span>

                    <div class="group-control">
                    </div>
                </div>


                <div class="form-group">
                    <label for="name" class="hasTooltip required invalid" title=""
                           data-original-title="<strong>Name</strong><br />Enter your full name." aria-invalid="true">
                        Name<span class="star">&nbsp;*</span></label>

                    <div class="group-control">
                        <form:input path="name" id="name" cssClass="required" type="text"/>
                    </div>
                </div>

                <div class="form-group">
                    <label id="email" for="email" class="hasTooltip required" title=""
                           data-original-title="<strong>Email Address</strong><br />Enter your email address.">
                        Email Address<span class="star">&nbsp;*</span></label>

                    <div class="group-control">
                        <form:input path="email" type="text"/>
                    </div>
                </div>


                <div class="form-group">
                    <label id="password" for="password" class="hasTooltip required" title=""
                           data-original-title="<strong>Password</strong><br />Enter your desired password.">
                        Password<span class="star">&nbsp;*</span></label>

                    <div class="group-control">
                        <form:input path="password" type="text"/>
                    </div>
                </div>


                <div class="form-group">
                    <label id="passwordRepeated" for="passwordRepeated" class="hasTooltip required" title=""
                           data-original-title="<strong>Confirm Password</strong><br />Confirm your password.">
                        Confirm Password<span class="star">&nbsp;*</span></label>

                    <div class="group-control">
                        <form:input path="passwordRepeated" type="text"/>
                    </div>
                </div>

                <div class="form-group">

                    <button type="submit">create</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources//bootstrap/js/bootstrap.min.js"></script>

</body>
</html>



