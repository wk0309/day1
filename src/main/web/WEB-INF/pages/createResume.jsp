<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/20
  Time: 10:13
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
    <link rel="stylesheet" href="../../css/createResume.css" type="text/css">
</head>
<body>
<div style="text-align: center">
    <form action="/addResume" method="post">
        <table border="1" cellspacing="0" align="center">
            <tr>
                <td colspan="6" style="text-align: center;height: 50px">
                    <h2 style="color: blue;text-align: center">个人履历</h2>
                </td>
            </tr>
            <tr>
                <td class="td">姓名</td>
                <td class="td"><input type="text" name="res_name"></td>
                <td class="td">性别</td>
                <td class="td"><input type="text" name="res_sex"></td>
                <td class="td">年龄</td>
                <td class="td"><input type="text" name="res_age"></td>
            </tr>
            <tr>
                <td>名族</td>
                <td><input type="text" name="res_nation"></td>
                <td>政治面貌</td>
                <td><input type="text" name="res_politics_status"></td>
                <td>身高</td>
                <td><input type="text" name="res_height"></td>
            </tr>
            <tr>
                <td>学历</td>
                <td><input type="text" name="res_education"></td>
                <td>毕业学校</td>
                <td><input type="text" name="res_school"></td>
                <td>专业</td>
                <td><input type="text" name="res_major"></td>
            </tr>
            <tr>
                <td>籍贯</td>
                <td colspan="5"><input type="text" name="res_native_place" style="width: 514px"></td>
            </tr>
            <tr>
                <td>兴趣爱好</td>
                <td colspan="5" style="height: 50px"><textarea name="res_hobby" style="height: 50px;width: 514px"></textarea></td>
            </tr>

            <tr>
                <td>工作经历</td>
                <td colspan="5" style="height: 50px"><textarea name="res_work" style="height: 50px;width: 514px"></textarea></td>
            </tr>
            <tr>
                <td>通讯地址</td>
                <td colspan="2"><input type="text" name="res_address" style="width: 200px"></td>
                <td>联系电话</td>
                <td colspan="2"><input type="text" name="res_phone" style="width: 200px"></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td colspan="2"><input type="text" name="res_email" style="width: 200px"></td>
                <td>邮编</td>
                <td colspan="2"><input type="text" name="res_postcode" style="width: 200px"></td>
            </tr>
            <tr>
                <td>自我评价</td>
                <td colspan="5" style="height: 100px">
                    <textarea name="res_self_assessment" style="height: 100px;width: 514px"></textarea>
                </td>
            </tr>
        </table><br/>
        <input type="submit" value="保存" style="background-color: aqua">
        <a href="/quit">返回</a>
    </form>
    <h3 style="color: red">${requestScope.success}</h3>
    <p></p>

</div>
</body>
</html>
