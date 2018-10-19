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
</head>
<body>
<fieldset>
    <legend>用户登录</legend>
    <form action="/login" method="post">
        账号：<input type="text" name="u_name"><br/>
        密码：<input type="password" name="u_pass"><br/>
        <input type="submit" value="登录">
        <input type="submit" value="注册" onclick="window.open('toRegister')"><br/>
        <h3 style="color: red">${requestScope.error}</h3><%--用户名或密码错误--%>
    </form>
</fieldset>
</body>
</html>
