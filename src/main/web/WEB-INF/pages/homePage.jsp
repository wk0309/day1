<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19
  Time: 14:15
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
    <link href="../../css/homePage.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="d">
    <div style="text-align: right">
        用户：${sessionScope.user.u_name}
        <a href="/exit" style="color: blue">退出</a>
        &nbsp;
    </div>
    <hr/>
    <div>
        &nbsp;<a href="/myResume">查看我的简历</a><br/>
        &nbsp;<a href="/createResume">新建简历</a><br/>
        &nbsp;<a href="">浏览招聘信息</a><br/>
        &nbsp;<a href="">我的邮件</a>
    </div>

</div>
</body>
</html>
