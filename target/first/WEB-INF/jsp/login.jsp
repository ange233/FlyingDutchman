<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/7/26
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Material Admin by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="/resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="/resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="/resource/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="/resource/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="/resource/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>Flying Dutchman</h1>
                            </div>
                            <h2>航班大数据分析平台</h2>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form id="login" method="post" class="form-validate">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="name" required data-msg="请输入用户名" class="input-material">
                                    <label id="usernameLabel" for="login-username" class="label-material">用户名</label>
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="password" required data-msg="请输入密码" class="input-material">
                                    <label id="passwordLabel" for="login-password" class="label-material">密码</label>
                                </div><a class="btn btn-primary" onclick="login()">登录</a>
                                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                            </form><a href="#" class="forgot-pass">忘记密码？</a><br><small>没有账户？ </small><a class="signup" onclick="toRegister()">注册</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="/resource/vendor/jquery/jquery.min.js"></script>
<script src="/resource/vendor/popper.js/umd/popper.min.js"> </script>
<script src="/resource/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="/resource/vendor/chart.js/Chart.min.js"></script>
<script src="/resource/vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="/resource/js/front.js"></script>
<script>
    function login() {
        var form = document.getElementById("login");
        form.method = "post";
        form.action = "/user/login";
        form.submit();
    }
    function toRegister() {
        var form = document.getElementById("login");
        form.method = "post";
        form.action = "/user/toRegister";
        form.submit();
    }
    function init() {
        var passwordError = '${requestScope.get('passwordError')}';
        var usernameError = '${requestScope.get('usernameError')}';

        if (passwordError != ""){
            var passwordLabel = document.getElementById("passwordLabel");
            passwordLabel.innerHTML = passwordError;
        }
        if (usernameError != ""){
            var usernameLabel = document.getElementById("usernameLabel");
            usernameLabel.innerHTML = usernameError;
        }
    }
    window.onload = init();
</script>
</body>
</html>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%--%>
    <%--String path = request.getContextPath();--%>
    <%--String basePath = request.getScheme() + "://"--%>
            <%--+ request.getServerName() + ":" + request.getServerPort()--%>
            <%--+ path + "/";--%>
<%--%>--%>
<%--<html>--%>
<%--<head>--%>

<%--</head>--%>
<%--<body>--%>
<%--<div id="div">--%>
    <%--您的ID为_，密码为_。--%>
<%--</div>--%>
<%--<script language="javascript">--%>
    <%--function init() {--%>
        <%--var id = '${requestScope.get('userId')}';--%>
        <%--if (id == "false"){--%>
            <%--alert("注册失败，请检查您的网络连接");--%>
        <%--}else if (id.length > 0 && id != "999"){--%>
            <%--confirm("你的的ID号为" + id + ", 请好好记牢哦~");--%>
        <%--}--%>

        <%--var div = document.getElementById("div");--%>
        <%--div.innerHTML = "您的ID为" + "${id}" + ",密码为" + "${password}";--%>
    <%--}--%>
    <%--window.onload = init();--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
