<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Evento</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">



    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<header id="header" role="banner">
    <div class="main-nav" style="background-color: #39b3d7">
        <div class="container">
            <div class="header-top">
                <div class="pull-right social-icons">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-youtube"></i></a>
                </div>
            </div>
            <div class="row">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">

                    </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right" >
                        <li class="scroll active"><a href="/#home">Home</a></li>
                        <sec:authorize access="isAnonymous()">
                            <li><a class="no-scroll" href="/login" >Login</a></li>
                        </sec:authorize>


                        <sec:authorize access="isAuthenticated()">
                            <li><a class="no-scroll" href="/user/${username}" >My page</a></li>
                            <li><a class="no-scroll" href="/logout" >Logout</a></li>
                        </sec:authorize>
                        <li ><a class="no-scroll" href="/performer">Performer</a></li>

                        <li class="scroll"><a href="/event">Event</a></li>
                        <li class="scroll"><a href="/about">About</a></li>



                        <li><a class="no-scroll" href="/login" >PURCHASE TICKETS</a></li>
                        <li class="scroll"><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!--/#header-->






<section style="padding: 50px"></section>

<div class="container" >
    <div class="row ">
        <div class="col-md-3"></div>
        <div class="col-md-3 ">

            <h3>User registration</h3>
            <div class="registration ">
                <form:form method="post" modelAttribute="form" cssClass="form-control" action="${userActionUrl}">
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
        <div class="col-md-3"></div>
    </div>
</div>

<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources//bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="/js/gmaps.js"></script>
<script type="text/javascript" src="/js/smoothscroll.js"></script>
<script type="text/javascript" src="/js/jquery.parallax.js"></script>
<script type="text/javascript" src="/js/coundown-timer.js"></script>
<script type="text/javascript" src="/js/jquery.scrollTo.js"></script>
<script type="text/javascript" src="/js/jquery.nav.js"></script>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>



