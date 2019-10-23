<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../adminlte/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../adminlte/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../adminlte/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../adminlte/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../../adminlte/css/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>森森—PMS</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">


        <form action="/login/checklogin" method="post">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name = "username" placeholder="UserName">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control"  name = "password" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <c:choose>
                <c:when test="${param.errorcode eq '1001'}">
                    <div class = "alert" style="text-align: center">用户名或密码错误</div>
                </c:when>
                <c:otherwise>
                    <div class = "alert" style="text-align: center">请先登录</div>
                </c:otherwise>

            </c:choose>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> Remember Me
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-success btn-block btn-flat">进入系统</button>
                </div>
                <!-- /.col -->
            </div>
        </form>



        <a href="/forget/forget" style = "font-size:12px">忘记密码？</a><br>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="../../adminlte/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../adminlte/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../adminlte/js/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
        $("#login").click(function () {
            window.location.href = "localhost:8080/login/checklogin";
        })


    });
</script>
</body>
</html>
