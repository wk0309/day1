<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Title</title>
    <link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<div style="text-align: center">
    <form action="/login" method="post">
        <br/>
        <br><br>
        <h1 style="color: blue">LOGIN</h1>
        Username<br/>
        <input type="text" name="u_name" required><br/><br/>
        Password<br/>
        <input type="password" name="u_pass" required><br/><br/><br/>
        <input type="submit" value="登录" class="sub">
        <input type="submit" value="注册" class="sub" onclick="window.open('toRegister')"><br/>
        <h3 style="color: red">${requestScope.error}</h3><%--用户名或密码错误--%>
    </form>
</div>
</body>
</html>
