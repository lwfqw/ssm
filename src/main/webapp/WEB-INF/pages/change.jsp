<%--
  Created by IntelliJ IDEA.
  User: 短相思兮无穷极
  Date: 2020/3/26
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${pageContext.request.contextPath}/css/admine.css" rel="stylesheet" type="text/css" >
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
    <title>欢迎您,${currUser.name}  </title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js"></script>
<script>
    L2Dwidget.init();
</script>
<div align="center" style="height: 50%;width: 50%">
    <form action="/qinMing/user/modify" method="post">
        <input value="${user.tel}" readonly name="tel"><br/>
        <input value="${user.name}" name="name"><br/>
        <input value="${user.password}" name="password"><br/>
        <input value="${user.city}" name="city"><br/>
        <input value="${user.comment}"><br/>
        <input value="提交" type="submit">
    </form>
</div>
</body>
</html>