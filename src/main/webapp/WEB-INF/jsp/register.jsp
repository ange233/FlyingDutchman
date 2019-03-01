<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/2/27
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Flying Dutchman航班大数据分析平台</title>
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
                            <form id="register" class="form-validate">
                                <div class="form-group">
                                    <input id="register-username" type="text" name="registerUsername" required data-msg="请输入用户名" class="input-material">
                                    <label id="usernameLabel" for="register-username" class="label-material">用户名</label>
                                </div>
                                <div class="form-group">
                                    <input id="register-email" type="email" name="registerEmail" required data-msg="请输入有效的邮箱" class="input-material">
                                    <label for="register-email" class="label-material">邮箱      </label>
                                </div>
                                <div class="form-group">
                                    <input id="register-password" type="password" name="registerPassword" required data-msg="请输入你的密码" class="input-material">
                                    <label for="register-password" class="label-material">密码        </label>
                                </div>
                                <div class="form-group terms-conditions">
                                    <input id="register-agree" name="registerAgree" type="checkbox" required value="1" data-msg="你必须同意相关协议" class="checkbox-template">
                                    <label for="register-agree">同意相关协议和条款</label>
                                </div>
                                <div class="form-group">
                                    <button id="regidter" type="submit" name="registerSubmit" class="btn btn-primary" onclick="check()">注册</button>
                                </div>
                            </form><small>已有账户？ </small><a class="signup" onclick="toLogin()">登录</a>
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
</body>
<script>
    <%--innerHTML不能用要用value--%>
    function check() {
        if (document.getElementById("register-username").value != "" &&
            document.getElementById("register-email").value != "" &&
            document.getElementById("register-password").value != "" &&
            document.getElementById("register-agree").value == 1){
            register()
        }
    }
    function register() {
        var form = document.getElementById("register");
        form.method = "post";
        form.action = "/user/register";
        form.submit();
    }
    function toLogin() {
        var form = document.getElementById("register");
        form.method = "post";
        form.action = "/user/toLogin";
        form.submit();
    }
    function init() {
        var state = '${requestScope.get('state')}';
        if (state != ""){
            var usernameLabel = document.getElementById("usernameLabel");
            usernameLabel.innerHTML = state;
        }
    }
    window.onload = init();
</script>
</html>
