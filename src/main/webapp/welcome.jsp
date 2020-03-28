<%--
  Created by IntelliJ IDEA.
  User: 短相思兮无穷极
  Date: 2020/3/26
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
    <title>Document</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js"></script>
<script>
    L2Dwidget.init();
</script>
<div class="main">
    <form method="post" action="/qinMing/user/login" style="align-content: center">
        <b style="background-color: cyan">账号：</b><input type="tel" name="tel"><br/><br/>
        <b style="background-color: cyan">密码：</b><input type="password" name="password" id="pwd" oninput="check()"><br/><br/>
        <input id="sub" type="submit" value="登录">&nbsp;&nbsp;<input type="reset" value="重置">
    </form>
    <script type="text/javascript">
       function check() {
           if($("tel").val()=="")
               alert("请填写账号");
       }
    </script>
</div>
</body>
</html>