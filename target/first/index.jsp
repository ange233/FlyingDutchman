<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%--<!doctype html>--%>
<head></head>
<body>
<form id="form">
    ID:       <input name="id" type="text">
    PASSWORD: <input name="password" type="text">
    <button style="height: auto; height: auto" value="登录" href="login.jsp"></button>
</form>

</body>
<script type="text/javascript">
    function login() {
        var form = document.getElementById("form");
        form.method = "post";
        form.action = "/user/login";
        form.submit();
    }
    function init() {
        var form = document.getElementById("form");
        form.method = "post";
        form.action = "/user/toLogin";
        form.submit();
    }
    window.onload = init();
</script>
</html>

