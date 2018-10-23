<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 14:48
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
    <link rel="stylesheet" type="text/css" href="../../css/register.css">
</head>
<body>
<div style="text-align: center">
    <h1 style="color: red">REGISTER</h1>
    <form action="/register" method="post">
        Username<br/>
        <input type="text" name="u_name" required><br/><br/>
        Password<br/>
        <input type="password" name="u_pass" required><br/><br/><br/>
        <input type="submit" class="sub" value="注册">
        <input type="submit" class="sub" value="登录" onclick="window.open('exit')"><br/>
        <h3 style="color: green">${requestScope.success}</h3><%--注册成功--%>
    </form>
</div>


</body>
</html>
