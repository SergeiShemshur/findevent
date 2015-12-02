<%--
<form role="form" action="/login" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div>
        <label for="email">Email address</label>
        <input type="email" name="email"  required autofocus/>
    </div>
    <div>
        <label for="password">Password</label>
        <input type="password" name="password" id="password" required/>
    </div>
    <div>
        <label for="remember-me">Remember me</label>
        <input type="checkbox" name="remember-me" id="remember-me"/>
    </div>
    <button type="submit">Sign in</button>
</form>
--%>
<!DOCTYPE html >
<html lang="en" ng-app>
<head>
    <script src="/resources/js/angular.min.js"></script>
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <div class="row">


        <div class="col-md-9">
            <form role="form" action="/login" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group">
                    <label for="InputEmail1">Email address</label>
                    <input type="email" name="email" id="email" class="form-control" id="InputEmail1" required autofocus
                           placeholder="Email">
                </div>

                <div class="form-group">
                    <label for="InputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="InputPassword1" required autofocus
                           placeholder="Password">
                </div>

                <div>
                    <label for="remember-me">Remember me</label>
                    <input type="checkbox" name="remember-me" id="remember-me"/>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
    </div>



</div>


<script src="/resources/js/jquery-2.1.4.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>