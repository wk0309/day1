<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/23
  Time: 11:11
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
<div>
    <c:if test="${empty sessionScope.resumeList || sessionScope.resumeList==null}">
        <h3>暂无简历</h3>
    </c:if>
    <c:if test="${sessionScope.resumeList!=null}">
        <table border="1" cellspacing="0">
            <tr>
                <td>我的简历</td>
                <td>修改</td>
                <td>删除</td>
            </tr>
            <c:forEach items="${sessionScope.resumeList}" var="resume">
                <tr>
                    <td style="text-align: center">简历${resume.res_id}</td>
                    <td>
                        <a href="/queryResume?res_id=${resume.res_id}">修改</a>

                    </td>
                    <td>
                        <a href="/deleteResume?res_id=${resume.res_id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/createResume">添加简历</a>
    <a href="/quit">返回</a>
</div>
</body>
</html>
