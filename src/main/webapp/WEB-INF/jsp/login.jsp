<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/7/26
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>

</head>
<body>
<div id="div">
    您的ID为_，密码为_。
</div>
<script language="javascript">
    function init() {
        var id = '${requestScope.get('userId')}';
        if (id == "false"){
            alert("注册失败，请检查您的网络连接");
        }else if (id.length > 0 && id != "999"){
            confirm("你的的ID号为" + id + ", 请好好记牢哦~");
        }

        var div = document.getElementById("div");
        div.innerHTML = "您的ID为" + "${id}" + ",密码为" + "${password}";
    }
    window.onload = init();
</script>
</body>
</html>
