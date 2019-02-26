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
    <button style="height: auto; height: auto" value="登录" onclick="login()"></button>
</form>

</body>
<script type="text/javascript">
    function login() {
        alert("777");
        var form = document.getElementById("form");
//        var input = document.createElement("input");
//        input.name = "userId";
//        input.value = "999";
//        form.appendChild(input);

        form.method = "post";
        form.action = "/user/login";
        form.submit();
    }
</script>
</html>

