<%@ page import="com.example.utility.CurrentUser" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
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
    <style>
        .main > div {
            display: inline-block;
            width: 49%;
            margin-top: 10px;
        }

        .two .register {
            border: none;
        }
        .two .register h3 {
            border-bottom-color: #909090;
        }
        .two .register .sep {
            border-color: #909090;
        }

        .register {
            width: 500px;
            margin: 10px auto;
            padding: 10px;
            border: 7px solid #39b3d7;
            border-radius: 10px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            color: #444;
            background-color: #F0F0F0;
            box-shadow: 0 0 20px 0 #000000;
        }
        .register h3 {
            margin: 0 15px 20px;
            border-bottom: 2px solid #72B372;
            padding: 5px 10px 5px 0;
            font-size: 1.1em;
        }
        .register div {
            margin: 0 0 15px 0;
            border: none;
        }
        .register label {
            display: inline-block;
            width: 25%;
            text-align: right;
            margin: 10px;
        }
        .register input[type=text], .register input[type=password] {
            width: 65%;
            font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
            padding: 5px;
            font-size: 0.9em;
            border-radius: 5px;
            background: rgba(0, 0, 0, 0.07);
        }
        .register input[type=text]:focus, .register input[type=password]:focus {
            background: #FFFFFF;
        }
        .register .button {
            font-size: 1em;
            border-radius: 8px;
            padding: 10px;
            border: 1px solid #59B969;
            box-shadow: 0 1px 0 0 #60BD49 inset;
            background: #63E651;
            background: -webkit-linear-gradient(#63E651, #42753E);
            background: -moz-linear-gradient(#63E651, #42753E);
            background: -o-linear-gradient(#63E651, #42753E);
            background: linear-gradient(#63e651, #42753e);
        }
        .register .button:hover {
            background: #51DB1C;
            background: -webkit-linear-gradient(#51DB1C, #6BA061);
            background: -moz-linear-gradient(#51DB1C, #6BA061);
            background: -o-linear-gradient(#51DB1C, #6BA061);
            background: linear-gradient(#51db1c, #6ba061);
        }
        .register .sep {
            border: 1px solid #72B372;
            position: relative;
            margin: 35px 20px;
        }
        .register .or {
            position: absolute;
            width: 50px;
            left: 50%;
            background: #F0F0F0;
            text-align: center;
            margin: -10px 0 0 -25px;
            line-height: 20px;
        }
        .register .connect {
            width: 400px;
            margin: 0 auto;
            text-align: center;
        }
        .register .social-buttons {
            display: inline-block;
            min-width: 150px;
            height: 50px;
            margin: 0 5px 10px;
            border-radius: 10px;
            text-shadow: 1px 1px 5px #000000;
        }
        .register .social-buttons a {
            display: block;
            height: 100%;
            text-decoration: none;
            color: #FFFFFF;
            padding: 10px 15px;
        }
        .register .social-buttons span {
            font-size: 30px;
            margin-left: 35px;
        }
        .register .facebook {
            background: #415EA3;
            background: -webkit-linear-gradient(#415EA3, #2E4A88);
            background: -moz-linear-gradient(#415EA3, #2E4A88);
            background: -o-linear-gradient(#415EA3, #2E4A88);
            background: linear-gradient(#415ea3, #2e4a88);
        }
        .register .facebook:hover {
            background: #3B5591;
            background: -webkit-linear-gradient(#3B5591, #2A437C);
            background: -moz-linear-gradient(#3B5591, #2A437C);
            background: -o-linear-gradient(#3B5591, #2A437C);
            background: linear-gradient(#3b5591, #2a437c);
        }
        .register .facebook a {
            background: url(../images/logo_fb_31x42.png) no-repeat 5% 10%;
        }
        .register .twitter {
            background: #41C0F3;
            background: -webkit-linear-gradient(#41C0F3, #3FBAEC);
            background: -moz-linear-gradient(#41C0F3, #3FBAEC);
            background: -o-linear-gradient(#41C0F3, #3FBAEC);
            background: linear-gradient(#41c0f3, #3fbaec);
        }
        .register .twitter:hover {
            background: #3EB1DF;
            background: -webkit-linear-gradient(#3EB1DF, #3EAAD6);
            background: -moz-linear-gradient(#3EB1DF, #3EAAD6);
            background: -o-linear-gradient(#3EB1DF, #3EAAD6);
            background: linear-gradient(#3eb1df, #3eaad6);
        }
        li a{
            color: white;
        }
    </style>

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
                    <a class="navbar-brand " href="index.jsp">

                    </a>
                </div>
                <div class="collapse navbar-collapse" style="color: white">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="no-scroll" href="/#home">Home</a></li>
                        <sec:authorize access="isAnonymous()">
                            <li><a class="no-scroll" href="/login">Login</a></li>
                        </sec:authorize>


                        <sec:authorize access="isAuthenticated()">
                            <li><a class="no-scroll" href="/user/<%
                            Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                            String username = ((CurrentUser) principal).getUser().getName();
                            out.print(username);
                            %>">My page</a></li>
                            <li><a class="no-scroll" href="/logout">Logout</a></li>
                        </sec:authorize>
                        <li><a class="no-scroll" href="/performer">Performer</a></li>

                        <li><a class="no-scroll" href="/event">Event</a></li>
                        <li><a class="no-scroll" href="/about">About</a></li>
                        <li class="scroll"><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!--/#header-->






<section style="padding: 50px"></section>


<div class="container"  >
    <div class="row ">
        <div class="col-md-3"></div>


        <div class="col-md-3">
           <p class="" style="color: green;"> Account created</p>
            <p class="text-center"><a href="/login">Login</a> </p>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>

<%--new form--%>






<script>
    $(document).ready(function(){
        var placeholder = null;
        $('input[type=text]').focus(function(){
            placeholder = $(this).attr("placeholder");
            $(this).attr("placeholder","");
        });
        $('input[type=text]').blur(function(){
            $(this).attr("placeholder", placeholder);
        });
    });
</script>




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