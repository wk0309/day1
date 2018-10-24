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
        <a href="/createResume">添加简历</a>
    </c:if>
    <c:if test="${sessionScope.resumeList!=null}">
        <table>
            <tr>
                <td>我的简历</td>
                <td>修改</td>
                <td>删除</td>
            </tr>
            <c:forEach items="${sessionScope.resumeList}" var="i">
                <tr>
                    <td>简历</td>
                    <td>
                        <form action="/queryResume" method="post">
                            <input type="hidden" name="res_id">
                            <input type="submit" value="修改">
                        </form>
                    </td>
                    <td>
                        <form action="" method="post">
                            <input type="hidden" name="res_id">
                            <input type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <a href="/quit">返回</a>
</div>
</body>
</html>
